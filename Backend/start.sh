#!/bin/bash
cd /app/Backend
/opt/venv/bin/python -m uvicorn main:app --host 0.0.0.0 --port $PORT