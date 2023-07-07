from fastapi import FastAPI
import uvicorn


app = FastAPI()


@app.get("/ping")
async def ping():
    return "hello, i am alive. "

if __name__ == "__main__":
    uvicorn.run(app, host='localhost', port=8000)
