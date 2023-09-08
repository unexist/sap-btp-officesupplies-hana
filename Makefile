install:
	npm install

update:
	npm update
	npm update --package-lock-only
	
security:	
	cds compile srv/ --to xsuaa > xs-security.json

build:
	cds build
	mbt build -t gen --mtar mta.tar

deploy:
	cf deploy gen/mta.tar

deploy-hana:
	cds deploy --to hana

serve:
	cds serve

watch:
	cds watch