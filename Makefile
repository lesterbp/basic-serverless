include .env
export

sls=./node_modules/.bin/serverless

shell:
	docker-compose run --rm serverless

deps:
	npm install

deploy: ${login}
	${sls} deploy -v

remove: ${login}
	${sls} remove -v

login:
	${sls} config credentials --provider aws --key $$AWS_ACCESS_KEY_ID --secret $$AWS_SECRET_ACCESS_KEY --overwrite

offline:
	docker-compose run -p 3000:3000 --rm serverless sh -c "${sls} offline start --host 0.0.0.0"
