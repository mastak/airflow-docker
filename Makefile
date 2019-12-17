.PHONY: build push

BASE_TAG 		?= 3.7-slim-stretch
AIRFLOW_VERSION ?= 1.10.6

build:
	docker build \
	  --build-arg BASE_TAG=${BASE_TAG} \
	  --build-arg AIRFLOW_VERSION=${AIRFLOW_VERSION} \
	  -t mastak/airflow:${AIRFLOW_VERSION} .

push:
	docker push mastak/airflow:${AIRFLOW_VERSION}
