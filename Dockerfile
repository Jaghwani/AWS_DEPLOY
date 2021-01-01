FROM python:stretch

copy . /app
WORKDIR /app
run pip install --upgrade pip
run pip install -r requirements.txt

entrypoint ["gunicorn", "-b", ":8080", "main:APP"]