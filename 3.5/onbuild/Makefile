IMAGE_NAME := tinycore-python
IMAGE_TAG := 3.5-onbuild

.PHONY: all clean build

all: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

clean:
	docker images $(IMAGE_NAME) | grep -q $(IMAGE_TAG) && docker rmi $(IMAGE_NAME):$(IMAGE_TAG) || true
