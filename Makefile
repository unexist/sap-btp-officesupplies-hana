install:
	npm install

update:
	npm update
	npm update --package-lock-only

build:
	cds build
	mbt build -t gen --mtar mta.tar

deploy:
	cf deploy gen/mta.tar

deploy-hana:
	cds deploy --to hana

serve:
	cds serve

run:
	cds run	