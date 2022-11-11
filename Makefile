install:
	 # This upgrades pip to the latest version and run requirements.txt
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vv test_hello.py
hello:
	echo "Hello world!"
