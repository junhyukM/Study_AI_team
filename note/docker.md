# Docker란?
- Docker는 애플리케이션을 컨테이너(Container)라는 단위로 포장해서 어디서나 실행할 수 있도록 해주는 플랫폼

## 왜 Docker를 쓰는지?
"내 PC에선 잘 되는데 서버에선 안 돼요…" 의 문제를 해결하기 위해<br>
의존성, 운영체제, 라이브러리 충돌 문제로부터 자유롭게<br>
개발 → 테스트 → 배포까지 한 환경 그대로 유지

## Docker 비유: 도시락(컨테이너)
우리가 만든 웹앱이나 AI 모델은 음식<br>
음식이 제대로 동작하려면:<br>
라이브러리 (torch, fastapi 등) 필요<br>
OS 환경, Python 버전, 설정이 맞아야 함<br>

#### Docker는 이 모든 걸 도시락처럼 하나로 포장해서 어디에나 가져가서 그대로 실행하는 것을 가능하게 해줌

## 핵심 개념들
### 1. 이미지 (Image)
실행 가능한 애플리케이션 환경을 정의한 템플릿

- 예: "Ubuntu 리눅스 + Python 3.10 + FastAPI 설치"

### 2. 컨테이너 (Container)
이미지를 실행한 실제 인스턴스

- 예: "실행 중인 FastAPI 서버 하나"

### 3. Dockerfile
이미지를 만들기 위한 설명서

- 예: `FROM python:3.10` → Python 설치된 이미지로 시작<br>
`RUN pip install fastapi` → 패키지 설치

### 4. Docker Hub
이미지 저장소 (GitHub처럼)

- 수천 개의 공식 이미지 사용 가능 (python, ubuntu, nginx, mysql 등)

### 5. 실전 흐름 예시
- 예: FastAPI 앱을 Docker로 감싸는 과정

1. 앱 코드 준비: main.py
2. Dockerfile 작성: 어떻게 실행할지 정의
3. 이미지 생성: docker build
4. 컨테이너 실행: docker run
5. 브라우저로 접근: http://localhost:8000

### 요약 정리
| 항목               | 비유      | 실제 예                          |
| ---------------- | ------- | ----------------------------- |
| Dockerfile       | 레시피     | Python 설치하고 앱 실행하도록 정의        |
| Docker Image     | 도시락 설계도 | Python, FastAPI 포함된 미리 정의된 환경 |
| Docker Container | 도시락     | 실행 중인 FastAPI 서버              |




## 실행 순서
Dockerfile 완성하면

```bash
docker build -t my-fastapi-app .
```
그 다음 실행:

```bash
docker run -d -p 8000:8000 my-fastapi-app
```
브라우저에서 확인:

```bash
http://localhost:8000/hello
```