# advanced-testing-techniques
This is a repo for doing advanced testing

## Setup Project

1. Create and source virtualenv

```bash
virtualenv ~/.advanced-testing-techniques 
source  ~/.advanced-testing-techniques/bin/activate
```

2. Create scaffold

```bash
touch Makefile && touch app.py && touch test_app.py && touch requirements.txt
```
 
3. Populate `Makefile`
```bash
install:
    pip install --upgrade pip &&\
        pip install -r requirements.txt
    
test: 
    python -m pytest -vv --cov=app --hellocli test_app.py

lint:
    pylint --disable=R,C app.py hellocli.py

all: install lint test
```

### How to debug 

* Print
* pdb
* testing