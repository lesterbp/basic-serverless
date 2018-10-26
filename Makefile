include .env
export

sls=./node_modules/.bin/serverless
runContainer=docker-compose run --rm -p $$OFFLINE_PORT:$$OFFLINE_PORT serverless
addMakeAndLogin=apk add make && make login

shell:
	${runContainer} sh

offline:
	${runContainer} sh -c "${sls} offline start --port $$OFFLINE_PORT --host 0.0.0.0"

deploy: deps
	${runContainer} sh -c "${addMakeAndLogin} && ${sls} deploy -v"

remove: deps
	${runContainer} sh -c "${addMakeAndLogin} && ${sls} remove -v"

deps:
	${runContainer} npm install

login:
	${sls} config credentials --provider aws --key $$AWS_ACCESS_KEY_ID --secret $$AWS_SECRET_ACCESS_KEY --overwrite
