install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	black *.py mylib/*.py

lint:
	pylint --disable=C,R *.py mylib/*.py

test:
	python -m pytest -vv --cov=mylib --cov=main test_*.py

build:
	docker build -t deploy-fastapi .

run:
	docker run -p 127.0.0.1:8080:8080 dbe5052a1558

deploy:
	# deploy 

all: install lint test deploy 