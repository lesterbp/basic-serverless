# basic-serverless

Creating Lambda through Serverless Framework with offline support.

## env setup

Copy `.env.template` and rename the copy to `.env` fill it up with the
 necessary values.
Run `npm install` once.

## requirements

You will only need `docker` to use or develop. Everything will run inside docker
 and all of the project files will be mounted inside it.

## deploying to AWS

`make deploy`

This will login your credentials and deploy to AWS. This will also print out the
 URL of your functions.

## running offline

`make offline`

This assumes you have already installed your project dependencies. If you have
 not done it yet or if you have updates to your npm packages then you'll need to
 do `make deps` first.

## running a shell

`make shell`

This will run a shell inside a Node.js docker container. Useful when you need to
 install new project dependencies/packages or run other Node related stuff.

## removing from AWS

`make remove`

This will remove everything that had been deployed to AWS. Be sure that you
 still have all the same configurations in your `serverless.yml` and `.env` as
 when you deployed.
