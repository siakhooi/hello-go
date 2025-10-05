init-go:
	go mod init github.com/siakhooi/hello-go
run:
	go run cmd/hello-go/main.go me

clean:
	rm -rf bin
build:
	scripts/build.sh
staticcheck:
	scripts/staticcheck.sh

golangci-lint:
	golangci-lint run
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
	goreleaser release

all: clean staticcheck build


test:
# 	go test ./cmd/hello-go
	go test -v  -cover   ./internal/message
binrun:
	./bin/hello-go

commit:
	git commit -m "initial version"
	git push

release:
	gh release create "0.1.0" --title "initial" --notes "initial release" --latest
