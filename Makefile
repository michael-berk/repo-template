.SHELLFLAGS := -ec
.PHONY: test lint format check

SRC_DIR := src
TESTS_DIR := tests

export PYTHONPATH := $(shell pwd)

test:
	python -m pytest $(TESTS_DIR)

lint:
	ruff check $(SRC_DIR) $(TESTS_DIR)
	black --check $(SRC_DIR) $(TESTS_DIR)

format:
	ruff check $(SRC_DIR) $(TESTS_DIR) --fix
	black $(SRC_DIR) $(TESTS_DIR)

check: test lint
