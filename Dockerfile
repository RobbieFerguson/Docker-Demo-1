FROM python:2.7.8
RUN apt-get update
RUN pip install -U nltk

ADD . /app

ENV CORPORA brown
CMD python -m nltk.downloader $CORPORA; python
CMD ["python", "./app.py"]
