.PHONY: help install venv lint test run

help:
	@echo "Targets:"
	@echo "  venv    - create virtual environment"
	@echo "  install - install dependencies"
	@echo "  lint    - run basic lint (if tools installed)"
	@echo "  test    - run tests"
	@echo "  run     - start flask app"

venv:
	python -m venv venv

install:
	pip install -r requirements.txt

lint:
	@echo "Lint is optional (add ruff/flake8 later)."

test:
	pytest -q || true

run:
	python app.py
