# basic-serverless
Creating Lambda through Serverless Framework with offline support.

# env setup
Copy `.env.template` and rename the copy to `.env` fill it up with the necessary values.

# requirements
You will only need `docker` to use or develop. Everything will run inside docker and all of the project files will be mounted inside it.

# running shell
`make shell` or `docker-compose run --rm serverless`

This will run a shell inside a docker container and install dependencies in the container. It will let you do all commands that is listed below inside the container.

# deploying to AWS
`make deploy`

This will login your credentials and deploy to AWS. This will also print out the URL of your functions.

# removing from AWS
`make remove`

This will remove everthing that had been deployed to AWS. Be sure that you still have all the same configurations in your `serverless.yml` and `.env` as when you deployed.

# running offline
`make offline`

You may run this command without being inside the docker container (make shell). This will run a new container and run the serverless app offline which is useful while developing.
