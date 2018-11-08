IMAGE ?= "bsundman/cycles-v1.9.1:cpu"

all: build push

build:
	docker build -t ${IMAGE} .
push:
	docker push ${IMAGE}
