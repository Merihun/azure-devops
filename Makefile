install:
    # This upgrades pip to the latest version and run requirements.txt
    pip install --upgrade pip &&\
        pip install -r requirements.txt

lint:
    pylint --disable=R,C mylib cli scli

flakeit:
    flake8 mylib

reformat:
    black cli.py mylib/lib.py

test:
    python -m pytest -vv --cov=mylib --cov=cli --cov=scli tests/*.py

all: install flakeit lint test