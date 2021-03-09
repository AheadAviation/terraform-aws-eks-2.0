FROM python:3.7-slim

# setup python env
RUN pip3 install pipenv

RUN mkdir -p /python/work 

COPY Pipfile /python/work
COPY main.py /python/work
COPY s3_upload.txt /python/work


EXPOSE 8000/tcp
WORKDIR /python/work
RUN /bin/bash -c "pipenv lock -r > requirements.txt; pipenv run pip3 install -r requirements.txt --upgrade --target python_lib"
RUN rm requirements.txt

ENV PYTHONPATH=/python/work/python_lib
ENTRYPOINT ["pipenv", "run", "python3", "main.py"]
