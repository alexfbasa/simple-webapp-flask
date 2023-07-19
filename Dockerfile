FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip
RUN pip install --upgrade pip==21.2.4
RUN pip install --no-cache-dir flask

COPY app.py /opt/

ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]
