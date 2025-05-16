.PHONY: run build

default: run

run: ## Servers the site for development.
	hugo server -D --noHTTPCache --enableGitInfo

build: ## Build the site.
	hugo --minify --environment production
