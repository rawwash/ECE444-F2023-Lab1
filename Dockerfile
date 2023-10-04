FROM python:3.10-slim

COPY . .
RUN pip3 install -r requirements.txt

ENV FLASK_ENV development
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000

CMD ["flask", "run"]