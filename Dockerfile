FROM python:3.6

COPY . /app

RUN echo "deb http://storage.googleapis.com/tensorflow-serving-apt stable tensorflow-model-server tensorflow-model-server-universal" | tee /etc/apt/sources.list.d/tensorflow-serving.list && \
    curl https://storage.googleapis.com/tensorflow-serving-apt/tensorflow-serving.release.pub.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y tensorflow-model-server && \
    pip install -r /app/requirements.txt

WORKDIR /app

RUN ["bash", "entrypoints.sh"]
