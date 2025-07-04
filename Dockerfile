# 베이스 이미지: Python 3.10 설치된 가벼운 리눅스
FROM python:3.10-slim

# 작업 디렉토리 설정 (컨테이너 안에서의 위치)
WORKDIR /app

# 내 Python 코드 복사
COPY main_fastapi.py .

# FastAPI, Uvicorn 설치
RUN pip install fastapi uvicorn

# 서버 실행 명령어
CMD ["uvicorn", "main_fastapi:app", "--host", "0.0.0.0", "--port", "8000"]
