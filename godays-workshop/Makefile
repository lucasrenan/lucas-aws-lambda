.PHONY: build clean deploy

build:
	dep ensure -v
	env GOOS=linux go build -ldflags="-s -w" -o bin/hello hello/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/world world/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/get-url get-url/main.go
	env GOOS=linux go build -ldflags="-s -w" -o bin/create-url create-url/main.go

clean:
	rm -rf ./bin ./vendor Gopkg.lock

deploy: clean build
	sls deploy --verbose
