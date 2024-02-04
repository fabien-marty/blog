.PHONY: serve
serve: ## Serve the blog locally
	jinja-tree .
	mkdocs serve

.PHONY: build
build: ## Build the blog as static files
	jinja-tree .
	mkdocs build --strict

.PHONY: clean
clean: ## Clean the repository
	rm -rf site
	rm -f mkdocs.yml

.PHONY: help
help::
	@# See https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
