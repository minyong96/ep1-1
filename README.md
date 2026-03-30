
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
```
docker pull ubuntu   # 이미지 다운로드
docker images        # 이미지 목록
docker ps            # 실행중 컨테이너
docker ps -a         # 전체 컨테이너
docker logs 컨테이너명  # 로그 확인
docker stats         # 리소스 확인
```
8️⃣ 컨테이너 실행 실습 로그
```
# hello-world 실행 결과
docker run hello-world

# ubuntu 컨테이너 진입 + 명령 결과
docker run -it ubuntu bash
ls
echo "hello"

# exit vs Ctrl+P+Q 차이 정리
- exit      → 컨테이너 종료
- Ctrl+P+Q  → 컨테이너 유지 (detach)
```
9️⃣ Dockerfile 커스텀 이미지
```
# Dockerfile 전체 내용 기록
# 각 줄의 목적 주석으로 설명

# 빌드 명령 + 출력결과
docker build -t 이미지명 .

# 실행 명령 + 출력결과
docker run -d -p 8080:80 이미지명

```
🔟 포트 매핑 접속 증거
```
- 실행 명령 기록
- 브라우저 스크린샷 첨부 (주소창 포함)
  → localhost:8080 접속 화면
```
1️⃣1️⃣ 바인드 마운트 + 볼륨 영속성
```
# [바인드 마운트]
# 실행 명령
docker run -v $(pwd)/app:/경로 이미지명

# 변경 전 화면 스크린샷
# index.html 수정
# 변경 후 화면 스크린샷

# [Docker 볼륨]
docker volume create 볼륨명     # 생성
docker run -v 볼륨명:/경로 ...  # 연결
# 컨테이너 내부 파일 생성
docker rm 컨테이너명            # 삭제
# 새 컨테이너 연결 후 파일 확인 → 유지됨 증명
```
1️⃣2️⃣ Git 설정 및 GitHub 연동
```
git config user.name "이름"
git config user.email "이메일"
git config --global init.defaultBranch main
git config --list   # 결과 기록

git add .
git commit -m "메시지"
git push origin main

# VSCode GitHub 연동 스크린샷 첨부
```
1️⃣3️⃣ 트러블슈팅 (2건 이상 필수!)
```
[문제 1]
- 문제: 어떤 오류가 발생했는지
- 원인 가설: 왜 그랬을 것 같은지
- 확인: 어떻게 확인했는지
- 해결: 어떻게 해결했는지

[문제 2]
- 문제:
- 원인 가설:
- 확인:
- 해결:
✅ 핵심 규칙
code
📋 복사
1. 모든 명령어 → 코드블록(```)으로 작성
2. 명령어 아래 실제 출력결과도 함께 기록
3. 스크린샷은 이미지로 첨부
4. 토큰/비밀번호 절대 포함 금지

```
