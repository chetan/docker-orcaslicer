
SHELL := bash
.ONESHELL := true

build:
	REL="$$(curl -sL "https://api.github.com/repos/MaxEllis/OrcaSlicer/releases/latest")"; \
	TAG="$$(echo "$$REL" | jq -r '.tag_name')"; \
	docker build -t "orcaslicer:$$TAG" -t "orcaslicer:latest" .
