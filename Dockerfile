FROM python:3.9-alpine
LABEL maintainer="Kojey"
# prevent python to disply on the console
ENV PYTHONUNBEFFERED 1
# requirements for the python environment
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
# directory for the app
RUN mkdir /app
WORKDIR /app
COPY ./app /app
# user to run the code inside the docker
RUN adduser -D user
USER user