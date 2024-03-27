install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

format:
	black *.py mylib/*.py

lint:
	pylint --disable=C,R *.py mylib/*.py

test:
	# test 

build:
	# build container

deploy:
	# deploy 

all: install lint test deploy 