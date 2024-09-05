install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test: 
	python -m pytest -vv --cov=app --hellocli test_app.py

lint:
	pylint --disable=R,C app.py hellocli.py

all: install lint test
