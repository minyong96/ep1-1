
# README.md 전체 구조
```
1. 프로젝트 개요
2. 실행 환경
3. 수행 항목 체크리스트
4. 터미널 조작 로그
5. 권한 실습 로그
6. Docker 점검 로그
7. Docker 운영 명령 로그
8. 컨테이너 실행 실습 로그
9. Dockerfile 커스텀 이미지 제작
10. 포트 매핑 접속 증거
11. 바인드 마운트 + 볼륨 영속성 증거
12. Git 설정 및 GitHub 연동 증거
13. 트러블슈팅
```


## 1.프로젝트 개요
```
- 미션 목표 한 줄 요약
- 선택한 방식 (B안: Alpine 베이스)
- 주요 구현 내용 요약
```

## 2.실행 환경
```
- OS: macOS 버전
- 쉘/터미널: zsh / 기본 터미널
- Docker 버전: docker --version 결과
- Git 버전: git --version 결과
- OrbStack 버전
```

## 3.수행 항목 체크리스트
```
- [x] 터미널 조작
- [x] 권한 실습
- [x] Docker 설치 점검
- [x] Dockerfile 제작
- [x] 포트 매핑
- [x] 바인드 마운트
- [x] Docker 볼륨
- [x] Git 설정
- [x] GitHub 연동
```
## 4. 터미널 조작 로그

### 아래 명령어 + 실제 출력결과 기록

#### pwd -> 현재 위치
<img width="408" height="48" alt="Usersajdcnd1310021ep1-1" src="https://github.com/user-attachments/assets/4a681ccb-8936-47cc-8620-97177ea3bc5e" />

#### ls -la          -> 숨김파일 포함 목록
<img width="908" height="145" alt="ajdend1310021" src="https://github.com/user-attachments/assets/36d95ddf-5ae8-445d-8319-536a1b3d9d6a" />

#### cd 폴더명            -> 이동
<img width="511" height="50" alt="Pasted Graphic 2" src="https://github.com/user-attachments/assets/84f07f53-28ec-4716-9362-2e2d30050f96" />

#### mkdir 폴더명         -> 폴더 생성
<img width="479" height="74" alt="ep1-1  mkdir app" src="https://github.com/user-attachments/assets/5eed17c5-4b09-411f-adfb-15e8ab34e3a1" />


#### cp 파일1 파일2       -> 복사
<img width="577" height="74" alt="Pasted Graphic 6" src="https://github.com/user-attachments/assets/1b8b56d7-474f-4be9-96e4-b1e1c7481a5f" />

#### mv 파일1 파일2       -> 이동/이름변경
<img width="860" height="74" alt="Pasted Graphic 7" src="https://github.com/user-attachments/assets/f1622f91-55c7-4d69-a0a3-fd80b4be12a2" />

#### rm 파일명            -> 삭제
<img width="541" height="122" alt="ajdcnd1310021@c5r2s2" src="https://github.com/user-attachments/assets/d137062f-dd0d-4781-8b50-2fdd8912ae51" />

#### cat 파일명           -> 내용 확인
<img width="520" height="225" alt="index html" src="https://github.com/user-attachments/assets/73884108-c5fd-4d69-8579-0dd6afcd92a7" />

#### touch 파일명         -> 빈 파일 생성
<img width="588" height="83" alt="index html" src="https://github.com/user-attachments/assets/12dac37e-34a3-4a8d-b41a-c64823db925c" />


## 5. 권한 실습 로그

#### 파일 권한 변경 -> 600
<img width="933" height="101" alt="2024 test file txt" src="https://github.com/user-attachments/assets/73447574-f653-41fd-ac90-d20994595e3e" />

#### 디렉토리 권한 변경 -> 700
<img width="972" height="143" alt="Pasted Graphic 12" src="https://github.com/user-attachments/assets/33b7b1ed-a47b-479b-93e8-bd7e80dbee64" />
<img width="928" height="147" alt="total 16" src="https://github.com/user-attachments/assets/f6fa72d2-f411-415b-ac28-48a73d23b90f" />


#### 변경 전/후 비교 결과 기록(실제 실행,쓰기,읽기)
* 실행 권한이 존재하지 않을때 
<img width="1023" height="335" alt="133 маг" src="https://github.com/user-attachments/assets/a2940148-d439-4a61-8111-570e71cd7c7b" />

* 쓰기 권한이 존재하지 않을때
<img width="940" height="240" alt="total 24" src="https://github.com/user-attachments/assets/72b88c7c-1ac4-490a-b65d-c2d1ed30f0e1" />

* 읽기 권한이 존재하지 않을때
<img width="951" height="242" alt="total 24" src="https://github.com/user-attachments/assets/9c07d331-e79a-44be-b8c5-5ce014fa69ca" />


---

## 6.Docker 점검 로그

#### docker --version     -> 버전 확인
```
ajdcnd1310021@c5r2s2 ep1-1 % docker --version
Docker version 28.5.2, build ecc6942

```


#### docker info          -> 데몬 동작 확인

```
ajdcnd1310021@c5r2s2 ep1-1 % docker info
Client:
 Version:    28.5.2
 Context:    orbstack
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.29.1
    Path:     /Users/ajdcnd1310021/.docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.40.3
    Path:     /Users/ajdcnd1310021/.docker/cli-plugins/docker-compose

Server:
 Containers: 6
  Running: 0
  Paused: 0
  Stopped: 6
 Images: 2
 Server Version: 28.5.2
 Storage Driver: overlay2
  Backing Filesystem: btrfs
  Supports d_type: true
  Using metacopy: false
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 1c4457e00facac03ce1d75f7b6777a7a851e5c41
 runc version: d842d7719497cc3b774fd71620278ac9e17710e0
 init version: de40ad0
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.17.8-orbstack-00308-g8f9c941121b1
 Operating System: OrbStack
 OSType: linux
 Architecture: x86_64
 CPUs: 6
 Total Memory: 15.67GiB
 Name: orbstack
 ID: 6687e065-a269-4150-a4ea-3f1b290ed799
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Experimental: false
 Insecure Registries:
  ::1/128
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine
```


## Docker 운영 명령 로그

#### docker pull nginx   -> 이미지 다운로드
```
ajdcnd1310021@c5r2s2 ep1-1 % docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
ec781dee3f47: Pull complete 
bb3d0aa29654: Pull complete 
510ddf6557d6: Pull complete 
cde7a05ae428: Pull complete 
587e3d84dbb5: Pull complete 
3189680c601f: Pull complete 
5e815e07e569: Pull complete 
Digest: sha256:7150b3a39203cb5bee612ff4a9d18774f8c7caf6399d6e8985e97e28eb751c18
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
```


#### docker images       -> 이미지 목록
```
ajdcnd1310021@c5r2s2 ep1-1 % docker images
REPOSITORY    TAG       IMAGE ID       CREATED       SIZE
nginx         latest    0cf1d6af5ca7   5 days ago    161MB
hello-world   latest    e2ac70e7319a   6 days ago    10.1kB
ubuntu        latest    f794f40ddfff   4 weeks ago   78.1MB
```

#### docker ps            -> 실행중 컨테이너
```
ajdcnd1310021@c5r2s2 ep1-1 % docker run -d nginx
9f9251818e3a0d2ee89d18bdbfa42272053712fa0f3f9f2537147aadbff643b1
ajdcnd1310021@c5r2s2 ep1-1 % docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
9f9251818e3a   nginx     "/docker-entrypoint.…"   2 seconds ago   Up 2 seconds   80/tcp    naughty_poincare
```
#### docker ps -a         -> 전체 컨테이너
```
ajdcnd1310021@c5r2s2 ep1-1 % docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
9f9251818e3a   nginx     "/docker-entrypoint.…"   2 seconds ago   Up 2 seconds   80/tcp    naughty_poincare
ajdcnd1310021@c5r2s2 ep1-1 % docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS                      PORTS     NAMES
9f9251818e3a   nginx         "/docker-entrypoint.…"   3 minutes ago    Up 3 minutes                80/tcp    naughty_poincare
9fade278fa6a   nginx         "/docker-entrypoint.…"   4 minutes ago    Exited (0) 3 minutes ago              nginx-codyssay
2eb4d195e898   hello-world   "/hello"                 15 minutes ago   Exited (0) 15 minutes ago             jovial_bassi
bad71c9715a3   nginx         "/docker-entrypoint.…"   18 minutes ago   Exited (0) 18 minutes ago             naughty_bell
229b7beeafe6   ubuntu        "/bin/bash"              4 hours ago      Exited (0) 4 hours ago                inspiring_benz
fe2cbf826138   ubuntu        "/bin/bash"              4 hours ago      Exited (0) 4 hours ago                recursing_fermat
8468ee6bbe46   ubuntu        "/bin/bash"              4 hours ago      Exited (0) 4 hours ago                pedantic_solomon
cf52631de4c6   hello-world   "/hello"                 4 hours ago      Exited (0) 4 hours ago                gracious_goldwasser
2905ac96a657   hello-world   "/hello"                 4 hours ago      Exited (0) 4 hours ago                elegant_gould
ef56d96aed47   hello-world   "/hello"                 4 hours ago      Exited (0) 4 hours ago                optimistic_torvalds
```

#### docker logs 컨테이너명   -> 로그 확인
```
ajdcnd1310021@c5r2s2 ep1-1 % docker logs 9f9251818e3a
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2026/03/30 12:51:10 [notice] 1#1: using the "epoll" event method
2026/03/30 12:51:10 [notice] 1#1: nginx/1.29.7
2026/03/30 12:51:10 [notice] 1#1: built by gcc 14.2.0 (Debian 14.2.0-19) 
2026/03/30 12:51:10 [notice] 1#1: OS: Linux 6.17.8-orbstack-00308-g8f9c941121b1
2026/03/30 12:51:10 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 20480:1048576
2026/03/30 12:51:10 [notice] 1#1: start worker processes
2026/03/30 12:51:10 [notice] 1#1: start worker process 29
2026/03/30 12:51:10 [notice] 1#1: start worker process 30
2026/03/30 12:51:10 [notice] 1#1: start worker process 31
2026/03/30 12:51:10 [notice] 1#1: start worker process 32
2026/03/30 12:51:10 [notice] 1#1: start worker process 33
2026/03/30 12:51:10 [notice] 1#1: start worker process 34
```

#### docker stats         -> 리소스 확인
```
CONTAINER ID   NAME               CPU %     MEM USAGE / LIMIT     MEM %     NET I/O         BLOCK I/O        PIDS 
9f9251818e3a   naughty_poincare   0.00%     5.754MiB / 15.67GiB   0.04%     1.13kB / 126B   860kB / 8.19kB   7 
```

<br>


## 8.컨테이너 실행 실습 로그

### hello-world 실행 결과
**docker run hello-world**

```
ajdcnd1310021@c5r2s2 ep1-1 % docker run hello-world 

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
```

<br>

### ubuntu 컨테이너 진입 + 명령 결과
**docker run -it ubuntu bash**
<br>
**간단 명령(예: ls, echo) 수행 결과**

```
ajdcnd1310021@c5r2s2 ep1-1 % docker run -it ubuntu bash
root@8f2bea2a7f21:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@8f2bea2a7f21:/# echo hello ubutu
hello ubutu
```

<br>

### run -it vs exec -it (접속 방식의 차이)

```
➜  ep1-1 git:(main) ✗ docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED              STATUS                       PORTS     NAMES
fe79e408d022   ubuntu        "sleep infinity"         About a minute ago   Up About a minute                      test-ubuntu2
278401c96342   ubuntu        "bash"                   3 minutes ago        Exited (0) 2 minutes ago               test-ubuntu1
```



**docker run -it 사용**
```
➜  ep1-1 git:(main) ✗ docker run -it --name test-ubuntu1 ubuntu bash
root@77354990b3c4:/# ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 06:40 pts/0    00:00:00 bash
root         9     1  0 06:40 pts/0    00:00:00 ps -ef

```

-> 새 컨테이너 + PID 1 생성 즉 새로운 컨테이너를 만들고 그 안에서 PID 1프로세스를 시작한다 <br>
컨테이너 == PID 1 프로세스 즉 bash가 죽으면 컨테이너가 종료 -> run 이 만든 프로세스가 PID 1<br>
bash 종료시 컨테이너 종료 확인함 


**docker exec -it 사용**
```
➜  ep1-1 git:(main) ✗ docker run -d  --name test-ubuntu2 ubuntu sleep infinity
67114d6e8be280edf3764531c97b8c510786b1eb0de08ab64a9fec6cbb0609d1
➜  ep1-1 git:(main) ✗ docker ps
CONTAINER ID   IMAGE     COMMAND            CREATED         STATUS         PORTS     NAMES
67114d6e8be2   ubuntu    "sleep infinity"   8 seconds ago   Up 7 seconds             test-ubuntu2
➜  ep1-1 git:(main) ✗ docker exec -it test-ubuntu2 bash
root@67114d6e8be2:/# ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 06:47 ?        00:00:00 sleep infinity
root         7     0  0 06:48 pts/0    00:00:00 bash
root        16     7  0 06:48 pts/0    00:00:00 ps -ef
root@67114d6e8be2:/#
```
-> 이미 실행중인 컨테이너 namespace 에 붙어서 새로운 프로세스를 하나 더 실행 PID 7 프로세스가 bash인걸 확인할수잇음 <br>
-> bash 종료 시 컨테이너 프로세스 살아있음 <br>
<br>

#### 중요한 차이: namespace 재사용
**docker run → namespace 새로 생성**<br>
**docker exec → 기존 namespace 재사용**<br>


#### 컨테이너를 두개 띄웠을 시에 PID 1 이 동일한데 같은환경인가에 대한 테스트

-> 해당 테스트는 host 기준으로 보면 pid가 다른걸 볼 수 있음 즉 PID 1은 컨테이너 재부 기준으로 볼 수 있고 ,namespace가 다르면 완전히 다른 격리 공간으로 볼 수 있다.
```
➜  ep1-1 git:(main) ✗ docker ps
CONTAINER ID   IMAGE     COMMAND            CREATED         STATUS         PORTS     NAMES
285c4adb01ed   ubuntu    "sleep infinity"   2 seconds ago   Up 2 seconds             c2
58c01fc2d23c   ubuntu    "sleep infinity"   2 seconds ago   Up 2 seconds             c1
```

```
➜  ep1-1 git:(main) ✗ docker inspect c1 | grep Pid
            "Pid": 1193,
            "PidMode": "",
            "PidsLimit": null,
➜  ep1-1 git:(main) ✗ docker inspect c2 | grep Pid
            "Pid": 1238,
            "PidMode": "",
            "PidsLimit": null,
```


**lifecycle 관점 비교**

| 항목                     | docker run | docker exec |
| ---------------------- | ---------- | ----------- |
| 컨테이너 생성                | O          | X           |
| namespace 생성           | O          | X           |
| cgroup 생성              | O          | X           |
| PID 1 생성               | O          | X           |
| 새 process 생성           | O          | O           |
| 기존 container 필요        | X          | O           |
| container lifecycle 영향 | O          | X           |


-> docker run 은 새 VM하나 띄운느낌이고 docker exec는 이미 실행중인 서버에 ssh 접속한 느낌으로 이해했다.<br>
컨테이너는 프로세스 집합이다 <br>
컨테이너 = VM이 아니라 격리된 process namepsace라고 이해함


#### 기존에 프로세스 콘솔에 붙는것을 확인 할 수잇는 attach (pid 1에붙음)
<img width="1143" height="457" alt="image" src="https://github.com/user-attachments/assets/5d9f18fa-fcc6-4587-9520-e5463adeb9d8" />

#### 새로운 프로세스를 실행하는걸 확일 할 수 있는 exec
<img width="1141" height="452" alt="image" src="https://github.com/user-attachments/assets/8f99885d-9e31-43fc-ae1d-2c6c92b9c1cc" />



---

## 9. Dockerfile 커스텀 이미지

```
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
```



```
➜  ep1-1 git:(main) ✗ docker build -t minyoung-server .
  
[+] Building 5.3s (16/16) FINISHED                                           docker:orbstack
 => [internal] load build definition from Dockerfile                                    0.1s
 => => transferring dockerfile: 3.84kB                                                  0.0s
 => resolve image config for docker-image://docker.io/docker/dockerfile:1.6             1.6s
 => CACHED docker-image://docker.io/docker/dockerfile:1.6@sha256:ac85f380a63b13dfcefa8  0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04                         1.5s
 => [internal] load .dockerignore                                                       0.1s
 => => transferring context: 2B                                                         0.0s
 => [stage-0 1/9] FROM docker.io/library/ubuntu:22.04@sha256:ce4a593b4e323dcc3dd728e39  0.0s
 => [internal] load build context                                                       0.1s
 => => transferring context: 509B                                                       0.0s
 => CACHED [stage-0 2/9] RUN --mount=type=cache,target=/var/lib/apt/lists     --mount=  0.0s
 => CACHED [stage-0 3/9] RUN groupadd -g 10001 appgroup     && useradd         --syste  0.0s
 => CACHED [stage-0 4/9] RUN mkdir -p /var/www/html     /var/cache/nginx     /var/lib/  0.0s
 => CACHED [stage-0 5/9] WORKDIR /var/www/html                                          0.0s
 => [stage-0 6/9] COPY --chown=appuser:appgroup app/nginx/nginx.conf /etc/nginx/nginx.  0.1s
 => [stage-0 7/9] COPY --chown=appuser:appgroup app/index.html .                        0.2s
 => [stage-0 8/9] COPY --chown=appuser:appgroup app/nginx/default.conf /etc/nginx/conf  0.2s
 => [stage-0 9/9] RUN ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/  0.4s
 => exporting to image                                                                  0.4s
 => => exporting layers                                                                 0.3s
 => => writing image sha256:f390672b1a3faa016adcc001794174866bf7d598d5f62ad1af0631dd25  0.0s
 => => naming to docker.io/library/minyoung-server       
```

```
➜  ep1-1 git:(main) ✗ docker run -d \
  --name minyoung-server1 \
  -p 8080:8080 \
  -v $(pwd)/app/index.html:/var/www/html/index.html \
  minyoung-server
```

## 10. 포트 매핑 접속 증거
```
➜  app git:(main) ✗ docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED         STATUS                   PORTS                                         NAMES
74d68d25d883   minyoung-server   "/usr/bin/tini -- ng…"   8 minutes ago   Up 8 minutes (healthy)   0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp   minyoung-server1

➜  ep1-1 git:(main) ✗ curl http://localhost:8080
<!DOCTYPE html>
<html>
<head>
    <title>make minyoung server</title>
    <style>
        body { font-family: sans-serif; text-align: center; margin-top: 50px; background-color: #f4f4f4; }
        h1 { color: #333; }
        .status { color: green; font-weight: bold; }
    </style>
</head>
<body>
    <h1>Nginx Web Server is Running!</h1>
    <h2> Update Nginx:) </h2>
    <p>Status: <span class="status">Graceful Shutdown & Non-root User Active</span></p>
    <p>Managed by <b>tini</b> (PID 1)</p>
</body>
</html>


```

## 11. 바인드 마운트 + 볼륨 영속성

**수정 전**
<img width="1319" height="734" alt="image" src="https://github.com/user-attachments/assets/25164d7e-b7ef-43e7-a935-2b73e699232d" />

**index.html 수정 후 바뀐 정적 파일**
<img width="1314" height="539" alt="image" src="https://github.com/user-attachments/assets/b9787577-60c9-4f2e-a59a-e6f36399b26e" />


**볼륨 영속성**
```
➜  ep1-1 git:(main) ✗ docker run -d --name vol-test -v test-volume:/var/www/html minyoung-server
412def013863c4248bc277a6b5a6113fde229ef5b2351f7d74bfbbc792d89db8
➜  ep1-1 git:(main) ✗ docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED        STATUS                           PORTS      NAMES
412def013863   minyoung-server   "/usr/bin/tini -- ng…"   1 second ago   Up 1 second (health: starting)   8080/tcp   vol-test

➜  ep1-1 git:(main) ✗ docker exec -it vol-test bash -lc "echo hi > hello.txt && cat hello.txt"          
hi
➜  ep1-1 git:(main) ✗ docker rm -f vol-test
vol-test
➜  ep1-1 git:(main) ✗ docker exec -it vol-test bash -lc "echo hi > hello.txt && cat hello.txt"
➜  ep1-1 git:(main) ✗ docker run -d --name vol-test2 -v test-volume:/var/www/html minyoung-server
93cd671cb9df78a722a96fe4c701552efa37b8e2e18267ce7cba0d1960c2a47b
➜  ep1-1 git:(main) ✗ docker exec -it vol-test2 bash -lc "cat hello.txt" 
hi

```


## 12. Git 설정 및 GitHub 연동
```

➜  ep1-1 git:(main) ✗ git add * 
➜  ep1-1 git:(main) ✗ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   Dockerfile
	new file:   app/index.html
	new file:   app/nginx/default.conf
	new file:   app/nginx/nginx.conf

➜  ep1-1 git:(main) ✗ git commit -m "feat: make dockerfile"
[main 188aee7] feat: make dockerfile
 Committer: 김민영 <ajdcnd1310021@c5r2s2.codyssey.kr>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 4 files changed, 187 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 app/index.html
 create mode 100644 app/nginx/default.conf
 create mode 100644 app/nginx/nginx.conf
➜  ep1-1 git:(main) git config --global user.name "minyong96" 
➜  ep1-1 git:(main) git config --global user.email "aldud159357@gmail.com"


➜  ep1-1 git:(main) ✗ git config --list

credential.helper=osxkeychain
user.name=minyong96
user.email=aldud159357@gmail.com
core.repositoryformatversion=0
core.filemode=true
core.bare=false
core.logallrefupdates=true
core.ignorecase=true
core.precomposeunicode=true
remote.origin.url=https://github.com/minyong96/ep1-1.git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.main.remote=origin
branch.main.merge=refs/heads/main
```

## 13. 트러블슈팅 (2건 이상 필수!)

# [문제 1] docker stop 하면 왜 바로 종료되지 않고 10초가 걸릴까?

---

# 문제 1-1

## 왜 `docker stop` 하면 바로 종료되지 않고 약 10초가 걸릴까?

### 상황

컨테이너를 `docker stop`으로 종료하면

즉시 중지되지 않고 **약 10초 후에 종료**되는 현상이 발생했다.

```
time dockerstop slow-stop
```

결과:

```
docker stop slow-stop  0.02s user 0.01s system 0% cpu 10.272 total
```

→ 실제 종료까지 약 **10초 소요**

---

# 가설 1-1

## Docker가 종료 신호를 보내고 기다리는 구조가 아닐까?

Docker는 컨테이너를 종료할 때 다음 순서로 동작한다.

```
docker stop
   ↓
SIGTERM 전송
   ↓
일정 시간 대기 (기본 10초)
   ↓
종료 안되면 SIGKILL 강제 종료
```

따라서 다음 가설을 세울 수 있다.

```
컨테이너 내부 프로세스가 SIGTERM을 정상적으로 처리하지 못해서
Docker가 10초 동안 기다린 뒤 강제 종료하는 것이 아닐까?
```

---

# 확인 1-1

## SIGTERM을 처리하는 Python 프로그램을 실행해보자

```
docker run-d--name slow-stop python:3.11-slim \
sh-c'python -u -c "
import signal, time, sys;

signal.signal(
    signal.SIGTERM,
    lambda s,f: (
        print(\"SIGTERM 수신 완료\"),
        sys.exit(0)
    )
);

print(\"애플리케이션 시작... (신호 대기 중)\");

[time.sleep(1) for _ in iter(int, 1)]
"'
```

로그 확인:

```
docker logs slow-stop
```

```
애플리케이션 시작... (신호 대기 중)
```

컨테이너 종료:

```
time dockerstop slow-stop
```

결과:

```
10초 소요
SIGTERM 수신 로그 없음
```

---

# 분석 1-1

## 핵심 원인 — PID 1이 shell(sh)이기 때문

컨테이너 내부 프로세스 구조:

```
PID 1  sh
  └── python
```

여기서 중요한 사실:

```
docker stop 은 PID 1 에게만 signal 을 보낸다
```

즉:

```
docker stop
   ↓
SIGTERM → sh (PID 1)
```

그리고:

```
sh 는 기본적으로 signal 을 자식에게 전달하지 않는다
```

그래서:

```
python 은 SIGTERM 을 받지 못함
```

결과:

```
docker 는 10초 기다림
→ SIGKILL 강제 종료
```

---

# 매우 중요한 기술 포인트 

여기 문장은 이렇게 수정하는 게 정확해.

기존 표현:

```
리눅스 커널이 PID 1을 보호해서 signal을 무시한다
```

정확한 표현:

```
PID 1은 default signal handling 동작이 일반 프로세스와 다르다
```

즉:

```
signal handler 없으면 종료되지 않을 수 있다
```

---

# 해결 1-2

## PID 1을 애플리케이션으로 만들기

shell을 제거하고 Python을 직접 PID 1로 실행한다.

```
docker run-d--name direct-stop python:3.11-slim \
python-u-c'...'
```

이제 구조:

```
PID 1  python
```

---

# 결과 1-2

```
time dockerstop direct-stop
```

```
0.276초
```

로그:

```
SIGTERM 수신 완료
```

---

# 결론 1

```
PID 1이 signal을 처리할 수 있어야
graceful shutdown이 동작한다
```

---

# 문제 2

## 자식 프로세스가 있을 때 signal이 전달되지 않는 문제

### 상황

애플리케이션이 다른 프로세스를 실행할 경우:

```
python
   └── subprocess
```

이 구조에서:

```
docker stop
   ↓
SIGTERM → python
   ↓
subprocess 는 signal 못 받을 수 있음
```

결과:

```
자식 프로세스가 살아남음
파일 쓰기 중단
데이터 유실 가능
```

이건 실제 production 사고 많이 나는 패턴이다.

---

# 문제 3

## 실제로 데이터가 중간에 깨지는가?

---

# 가설

```
컨테이너가 강제 종료되면
파일이 쓰이는 도중 중단되어
데이터가 손상될 수 있다
```

---

# 확인 3

## 파일을 계속 기록하는 프로그램 실행

```
docker run-d \
--name data-crash \
-v $(pwd):/app \
-w /app \
python:3.11-slim \
sh-c'python -u -c "
import time;

f=open(\"test.log\", \"w\");

print(\"기록 시작...\");

[
    (f.write(f\"Line {i}\\n\"), f.flush(), time.sleep(0.2))
    for i in range(1, 1001)
];

f.close()
"'
```

파일 확인:

```
tail-n5 test.log
```

```
Line 288
Line 289
Line 290
Line 291
Line 292
```

컨테이너 종료:

```
dockerstop data-crash
```

결과:

```
10초 후 강제 종료
```

파일:

```
Line 573
Line 574
Line 575
Line 576
Line 577
```

---

# 결론 3

```
파일이 끝까지 기록되지 않음
```

즉:

```
정상 종료가 아니라
강제 종료된 것
```

---

# 해결 2

## Graceful Shutdown 구현

---

# 해결 전략

SIGTERM을 받으면:

```
1. 작업 중단
2. 리소스 정리
3. 파일 close
4. 정상 종료
```

---

# 핵심 코드

```
signal.signal(
signal.SIGTERM,
handler
)
```

핵심 개념:

```
종료를 즉시 하지 않고
cleanup 후 종료한다
```

---

# 결과

```
docker stop
→ 즉시 종료
→ 데이터 손상 없음
```

---

# 최종 결론 — 문제 1

```
docker stop 이 10초 걸리는 이유는
컨테이너가 종료할 시간을 주기 때문이며,
PID 1이 signal을 처리하지 못하면
10초 후 SIGKILL 로 강제 종료된다.
```

---

---

# [문제 2]

## non-root nginx에서 Permission denied 발생

---

# 문제 2-1

## 서버가 실행되자마자 죽는다

### 상황

보안을 위해:

```
USER appuser
```

설정 후 컨테이너 실행.

결과:

```
dockerps
```

컨테이너 없음.

로그:

```
nginx: [emerg] open() "/run/nginx.pid" failed (13: Permission denied)
```

---

# 가설

## 권한이 없는 디렉토리에 파일을 쓰려고 해서 실패한 것이 아닐까?

에러 메시지:

```
Permission denied
```

경로:

```
/run/nginx.pid
```

여기서 핵심 추론:

```
Nginx 는 PID 파일을 /run 에 생성하려고 한다
```

하지만:

```
appuser 는 /run 에 쓸 권한이 없다
```

---

# 확인

실제로:

```
touch /run/test
```

결과:

```
Permission denied
```

가설 검증 완료.

---

# 기술적 사실

nginx 기본 설정:

```
pid /run/nginx.pid;
```

이건 nginx의 default behavior다.

즉:

```
nginx 시작 시
→ master process PID 를 파일로 기록한다
```

이걸:

```
PID file
```

이라고 한다.

---

# 해결

## nginx가 쓸 수 있는 디렉토리로 PID 경로 변경

예:

```
/tmp
```

또는:

```
/var/run/nginx
```

---

# 해결 방법 

```
pid /tmp/nginx.pid;
```

---

# 왜 `/tmp` 가 되는가

```
/tmp 는 모든 사용자 writable
```

그래서:

```
appuser 도 파일 생성 가능
```

---

# 결과

```
nginx 정상 실행
컨테이너 유지
에러 없음
```

---

# 최종 결론 — 문제 2

```
non-root 로 nginx 를 실행하면
기본 PID 파일 경로 (/run) 에 쓸 권한이 없기 때문에
서버가 시작 직후 종료된다.
```

해결:

```
PID 파일 경로를 writable 디렉토리로 변경한다.
```

예:

```
/tmp/nginx.pid
```

