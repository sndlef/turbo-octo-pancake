FROM python:3.11-slim

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

CMD /bin/bash gunicorn --bind 0.0.0.0:8080 pancake:create_app()

