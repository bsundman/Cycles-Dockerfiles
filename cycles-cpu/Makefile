IMAGE ?= "bsundman/cycles-cpu:v1.9.1"

all: build push

build:
	docker build -t ${IMAGE} .
push:
	docker push ${IMAGE}
