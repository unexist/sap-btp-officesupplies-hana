update:
	npm update
	npm update --package-lock-only

build:
	mbt build -t gen --mtar mta.tar

deploy:
	cf deploy gen/mta.tar