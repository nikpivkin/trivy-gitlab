.PHONY: build
build:
	@go build ./cmd/trivy-gitlab

.PHONY: install
install:
	@go install ./cmd/trivy-gitlab

build-plugin: build
	@tar -czf trivy-gitlab.tar.gz LICENSE plugin.yaml entrypoint trivy-gitlab