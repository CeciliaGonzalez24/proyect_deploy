FROM python:3.13-slim

WORKDIR /app

# Copia solo el backend
COPY Backend/ ./Backend/

# Instala dependencias
RUN pip install --upgrade pip
RUN pip install fastapi==0.116.2 uvicorn==0.24.0 bcrypt==4.3.0 \
    "python-jose[cryptography]"==3.5.0 "passlib[bcrypt]"==1.7.4 \
    sqlalchemy==2.0.43 ollama==0.5.4

# Puerto
EXPOSE 8000

# Comando de inicio
CMD ["python", "-m", "uvicorn", "Backend.main:app", "--host", "0.0.0.0", "--port", "8000"]