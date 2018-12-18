FROM python:alpine

ADD . /opt/application
RUN pip3 install -r /opt/application/requirements.txt

WORKDIR /opt/application

EXPOSE 8000
ENTRYPOINT ["gunicorn", "-w 2", "-b :8000", "app:app"]
