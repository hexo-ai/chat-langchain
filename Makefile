.PHONY: .export-env
.export-env:
	export $(cat .env | xargs)

.PHONY: install
install:
	poetry install

.PHONY: ingest
ingest: .export-env
	poetry run python ingest.py

.PHONY: start
start: .export-env
	poetry run uvicorn main:app --reload --port 8080

.PHONY: format
format:
	black .
	isort .
