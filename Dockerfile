# syntax=docker/dockerfile:1.6

############################################
# Base image
############################################
FROM ubuntu:22.04

############################################
# Metadata
############################################

LABEL org.opencontainers.image.title="minyoung server"
LABEL org.opencontainers.image.description="minyoung nginx container"
LABEL org.opencontainers.image.version="1.0.0"

############################################
# Build-time arguments
############################################
ARG USER_ID=10001
ARG GROUP_ID=10001

############################################
# Environment variables
############################################
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Seoul \
    APP_HOME=/var/www/html \
    NGINX_WORKER_PROCESSES=auto


############################################
# Install packages (Refined & Elegant)
############################################
RUN --mount=type=cache,target=/var/lib/apt/lists \
    --mount=type=cache,target=/var/cache/apt \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        nginx \
        curl \
        ca-certificates \
        tini \
        tzdata && \
    rm -rf /etc/nginx/sites-enabled/default && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime


############################################
# Create non-root user with explicit UID/GID
############################################
RUN groupadd -g ${GROUP_ID} appgroup \
    && useradd \
        --system \
        --uid ${USER_ID} \
        --gid appgroup \
        --no-create-home \
        --shell /usr/sbin/nologin \
        appuser



############################################
# Prepare directories
############################################
RUN mkdir -p ${APP_HOME} \
    /var/cache/nginx \
    /var/lib/nginx \ 
    /var/run \
    /tmp \
    && chown -R appuser:appgroup \
        ${APP_HOME} \
        /var/cache/nginx \
        /var/lib/nginx \
        /var/run \
        /var/log/nginx \
        /tmp


############################################
# Set working directory
############################################
WORKDIR ${APP_HOME}


############################################
# Copy application files
############################################
COPY --chown=appuser:appgroup app/nginx/nginx.conf /etc/nginx/nginx.conf

COPY --chown=appuser:appgroup app/index.html .
COPY --chown=appuser:appgroup app/nginx/default.conf /etc/nginx/conf.d/default.conf


############################################
# Logging to stdout/stderr
############################################
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log


############################################
# Network
############################################
EXPOSE 8080


############################################
# Volume for persistent data
############################################
VOLUME ["/var/www/html"]


############################################
# Healthcheck with startup delay
############################################
HEALTHCHECK \
    --interval=30s \
    --timeout=3s \
    --start-period=10s \
    --retries=3 \
    CMD curl -f http://localhost:8080/ || exit 1



############################################
# Graceful shutdown
############################################
STOPSIGNAL SIGTERM

############################################
# Drop root privileges
############################################
USER appuser

############################################
# Use tini as PID 1
############################################
ENTRYPOINT ["/usr/bin/tini", "--"]

############################################
# Start nginx in foreground
############################################
CMD ["nginx", "-g", "daemon off;"]
