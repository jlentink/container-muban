.PHONY: all build start shell test

TESTDIR?=""

build:
	docker build . --tag muban:latest

shell:
	docker run -it -v ${TESTDIR}:/application --rm muban:latest ash

test:
	docker run -it -v ${TESTDIR}:/application --rm muban:latest
