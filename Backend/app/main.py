from fastapi import FastAPI, HTTPException, Form
from fastapi.responses import HTMLResponse, JSONResponse, FileResponse
from tortoise.contrib.fastapi import register_tortoise
from app.tortoise_models import tach
from starlette.staticfiles import StaticFiles
import os
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# Register Tortoise
register_tortoise(
    app,
    db_url='mysql://root:@localhost/tach_db',
    modules={'models': ['app.tortoise_models']},
    generate_schemas=True,
    add_exception_handlers=True
)



# Get all tach
@app.get("/tach/", response_class=JSONResponse)
async def get_all_tach():
    return await tach.all().values()



# Add a new tach
@app.post("/tach/", response_class=JSONResponse)
async def add_tach(name: str = Form(...), dec: str = Form(...)):
    new_tach = await tach.create(name=name, dec=dec, com=False)
    return {"id": new_tach.id, "name": name, "dec": dec, "com": False}

# Update a tach
@app.put("/tach/{tach_id}", response_class=JSONResponse)
async def update_tach(tach_id: int, name: str = Form(...), dec: str = Form(...), com: bool = Form(...)):
    tach_obj = await tach.filter(id=tach_id).first()
    if not tach_obj:
        raise HTTPException(status_code=404, detail="Tach not found")
    
    await tach.filter(id=tach_id).update(name=name, dec=dec, com=com)
    return {"message": "Tach updated successfully"}

# Delete a tach
@app.delete("/tach/{tach_id}", response_class=JSONResponse)
async def delete_tach(tach_id: int):
    deleted_count = await tach.filter(id=tach_id).delete()
    if not deleted_count:
        raise HTTPException(status_code=404, detail="Tach not found")
    return {"message": "Tach deleted successfully"}

# تمكين CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  
    allow_credentials=True,
    allow_methods=["GET", "POST", "PUT", "DELETE"],
    allow_headers=["*"],
)