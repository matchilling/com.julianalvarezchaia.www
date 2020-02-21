.PHONY: default
default: help;

STACK_SLUG := matchilling/com.julianalvarezchaia.www
STACK_VERSION := latest

help:  ## Show this help
	@echo '----------------------------------------------------------------------'
	@echo $(STACK_SLUG)
	@echo '----------------------------------------------------------------------'
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	@echo '----------------------------------------------------------------------'

start: ## Serves the project directory a simple web server
	@python -m SimpleHTTPServer 8000
