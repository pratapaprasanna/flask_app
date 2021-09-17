FROM docker.io/ubuntu:latest

RUN apt-get update ;\
    apt-get upgrade -y gcc;\
    apt-get install -y --no-install-recommends \
    python-setuptools python3-pip python3-dev

RUN pip install flask

COPY app.py .

EXPOSE 5000

ENTRYPOINT ["python", "app.py"]
