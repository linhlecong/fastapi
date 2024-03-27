from fastapi import FastAPI
from mylib.logic import search_wiki
from mylib.logic import wiki as wikilogic
from mylib.logic import phrase as wikiphrase


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Wikipedia API. Call /search or /wiki"}


@app.get("/search/{value}")
async def search(value: str):
    result = search_wiki(value)
    return {"result": result}


@app.get("/wiki/{name}")
async def wiki(name: str):
    result = wikilogic(name)
    return {"result": result}


@app.get("/phrase/{name}")
async def phrase(name: str):
    result = wikiphrase(name)
    return {"result": result}
