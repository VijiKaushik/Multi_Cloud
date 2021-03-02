setup:
	python3 -m venv ~/.Multi_Cloud
	#source ~/.flask-ml-azure/bin/activate
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello.py  test_hello.py
	#python -m pytest --nbval notebook.ipynb


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C hello.py
	

all: install lint test