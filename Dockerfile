FROM python:3.8
WORKDIR /app
COPY . .
RUN apt update && pip install pipenv && pipenv install --system --deploy
EXPOSE 5000
ENTRYPOINT [ "python3","app.py" ]
