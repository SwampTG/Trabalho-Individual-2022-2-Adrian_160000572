FROM python:3.8

COPY . /app/
VOLUME ./output:/app/output

WORKDIR /app

RUN pip install -r requirements.txt

CMD python src/main.py

