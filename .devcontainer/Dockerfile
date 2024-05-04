FROM python:3.11

ARG PYTHON_ENV=my_python_dev

ENV PYTHON_ENV=$PYTHON_ENV

RUN mkdir -p /opt/$PYTHON_ENV/bin

RUN pip install poetry

COPY pyproject.toml /opt/$PYTHON_ENV/

WORKDIR /opt/$PYTHON_ENV

RUN poetry config virtualenvs.create false
RUN poetry install --no-root

ENV PATH=/opt/$PYTHON_ENV/bin:$PATH