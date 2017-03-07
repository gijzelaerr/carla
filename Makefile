

.PHONY=install notebook

all: notebook

.virtualenv:
	virtualenv -p python3 .virtualenv

install: .virtualenv
	.virtualenv/bin/pip install -r requirements.txt

notebook: install
	.virtualenv/bin/jupyter notebook


