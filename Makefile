clean:
	rm -rf bin
build:
	scripts/build.sh
	goreleaser build --snapshot --clean
test:
	scripts/test.sh
golangci-lint:
	golangci-lint run

all: clean golangci-lint build

commit:
	scripts/git-commit-and-push.sh

release:
	scripts/create-release.sh



init-go:
	go mod init github.com/siakhooi/hello-go
run:
	go run cmd/hello-go/main.go me

goreleaser-init:
# Initialize your project:
	goreleaser init
goreleaser-check:
# Verify your configuration:
	goreleaser check
goreleaser-healthcheck:
# Verify dependencies:
	goreleaser healthcheck
goreleaser-build:
# Build the binaries only:
	goreleaser build --snapshot --clean

goreleaser-release-snapshot:
# Run a snapshot release:
	goreleaser release --snapshot --clean

goreleaser-release:
# Run a complete release:
	goreleaser release --clean


binrun:
	bin/hello-go-windows-amd64.exe

	bin/hello-go-windows-amd64.exe earth
