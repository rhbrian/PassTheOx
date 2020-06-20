FROM python:3.7-alpine

ENV APP_HOME=/app

WORKDIR $APP_HOME

RUN apk add --update --no-cache gcc musl-dev

COPY . $APP_HOME/

EXPOSE 5000

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]