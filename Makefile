
.PHONY: install
install:
	poetry install

.PHONY: ingest
ingest:
	poetry run python ingest.py

.PHONY: start
start:
	poetry run uvicorn main:app --reload --port 8080

.PHONY: format
format:
	black .
	isort .
