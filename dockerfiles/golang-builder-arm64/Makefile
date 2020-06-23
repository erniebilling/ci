.PHONY: build

build: Dockerfile
	./fetch-go.sh
	docker build . -t ebilling/concourse-golang-builder-arm64:latest

.PHONY: push

push: 
	docker push ebilling/concourse-golang-builder-arm64:latest
