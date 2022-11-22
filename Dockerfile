FROM --platform=linux/x86_64 gcr.io/kaggle-images/python

RUN apt-get update
RUN apt-get install vim -y

RUN pip install -U pip && \
    pip install fastprogress japanize-matplotlib

COPY jupyter_notebook_config.py root/.jupyter/