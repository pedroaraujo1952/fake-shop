#!/bin/bash
export FLASK_APP=index.py
flask db upgrade || echo "Falha na migração do banco de dados, continuando mesmo assim..."
echo "Iniciando..."
python -m gunicorn --bind 0.0.0.0:5000 index:app