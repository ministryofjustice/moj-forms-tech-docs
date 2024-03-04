IMAGE := ministryofjustice/tech-docs-github-pages-publisher:v3.0.2

# Use this to run a local instance of the documentation site, while editing
.PHONY: preview
preview:
	docker run --rm \
		-v $$(pwd)/config:/app/config \
		-v $$(pwd)/source:/app/source \
		-p 4567:4567 \
		-it $(IMAGE) /scripts/preview.sh
