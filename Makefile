.PHONY: build clean

build: dist Dockerfile docker-entrypoint.sh
	docker build -t surfing-builder .
	docker run --rm \
		-v $(PWD):/src:ro \
		-v $(PWD)/dist:/dist \
		surfing-builder

dist:
	mkdir -p dist

clean:
	rm -rf dist
	rm -f Surfing_*.zip SurfingTile.zip
