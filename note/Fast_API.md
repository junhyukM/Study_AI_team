# FastAPI로 간단한 서버 만들기

## 목표
브라우저나 클라이언트가 "Hello, FastAPI!"라는 응답을 받을 수 있는 간단한 서버

## main.py 파일 생성

### main.py
```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, FastAPI!"}
```

### 설치해야 할 패키지
```bash
pip install fastapi uvicorn
```
### 서버 실행
```bash
uvicorn main:app --reload
# --reload 옵션은 코드 변경 시 서버가 자동 재시작되게 함(개발용).
```

### 접속 확인
브라우저에서 다음 주소로 접속:

http://localhost:8000/

출력 : 
```json
{
  "message": "Hello, FastAPI!"
}
```

### 자동 문서 확인
- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

