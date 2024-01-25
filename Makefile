.PHONY: run build

default: run

run: ## Servers the site for development.
	hugo serve -D --noHTTPCache --ignoreCache --disableFastRender

build: ## Build the site.
	hugo --minify --environment production
