.DEFAULT_GOAL=run

images-dir:
	@if [ ! -e images ]; then mkdir images; fi

build: images-dir
	docker build . -t vtex/radar-charts

run: build
	docker run -it --rm -v $(shell pwd)/images:/app/images -v $(shell cd ../; pwd)/levels:/app/levels -t vtex/radar-charts
	@echo "check the images dir for results"

build-bare: images-dir
	pip3 install -r requirements.txt

run-bare: build-bare
	./generate_all_levels.sh
	@echo "check the images dir for results"
