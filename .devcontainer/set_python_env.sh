#!/usr/bin/env bash

PYTHON_ENV=$1

python3 -m venv /opt/$PYTHON_ENV  \
        && export PATH=/opt/$PYTHON_ENV/bin:$PATH \

/opt/$PYTHON_ENV/bin/pip3 install -r ./requirements/requirements.txt