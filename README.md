README.md 기록할 내용 정리
README.md 전체 구조
```
📋 복사
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

```
# 아래 명령어 + 실제 출력결과 기록

pwd                  # 현재 위치
ls -la               # 숨김파일 포함 목록
cd 폴더명            # 이동
mkdir 폴더명         # 폴더 생성
cp 파일1 파일2       # 복사
mv 파일1 파일2       # 이동/이름변경
rm 파일명            # 삭제
cat 파일명           # 내용 확인
touch 파일명         # 빈 파일 생성
```

## 5. 권한 실습 로그
# 변경 전
ls -la

# 권한 변경
chmod 755 파일명
chmod 644 파일명

# 변경 후
ls -la

# 변경 전/후 비교 결과 기록
6️⃣ Docker 점검 로그
bash
📋 복사
docker --version     # 버전 확인
docker info          # 데몬 동작 확인
7️⃣ Docker 운영 명령 로그
bash
📋 복사
docker pull ubuntu   # 이미지 다운로드
docker images        # 이미지 목록
docker ps            # 실행중 컨테이너
docker ps -a         # 전체 컨테이너
docker logs 컨테이너명  # 로그 확인
docker stats         # 리소스 확인
8️⃣ 컨테이너 실행 실습 로그
bash
📋 복사
# hello-world 실행 결과
docker run hello-world

# ubuntu 컨테이너 진입 + 명령 결과
docker run -it ubuntu bash
ls
echo "hello"

# exit vs Ctrl+P+Q 차이 정리
- exit      → 컨테이너 종료
- Ctrl+P+Q  → 컨테이너 유지 (detach)
9️⃣ Dockerfile 커스텀 이미지
bash
📋 복사
# Dockerfile 전체 내용 기록
# 각 줄의 목적 주석으로 설명

# 빌드 명령 + 출력결과
docker build -t 이미지명 .

# 실행 명령 + 출력결과
docker run -d -p 8080:80 이미지명
🔟 포트 매핑 접속 증거
code
📋 복사
- 실행 명령 기록
- 브라우저 스크린샷 첨부 (주소창 포함)
  → localhost:8080 접속 화면
1️⃣1️⃣ 바인드 마운트 + 볼륨 영속성
bash
📋 복사
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
1️⃣2️⃣ Git 설정 및 GitHub 연동
bash
📋 복사
git config user.name "이름"
git config user.email "이메일"
git config --global init.defaultBranch main
git config --list   # 결과 기록

git add .
git commit -m "메시지"
git push origin main

# VSCode GitHub 연동 스크린샷 첨부
1️⃣3️⃣ 트러블슈팅 (2건 이상 필수!)
code
📋 복사
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

