# Jokes Demo

An application to serve random jokes

![live-code](img/screenshot.png)

## Description

This application is built using a React frontend and a Springboot backend. Truthfully there is nothing fancy nor unique
about the application code, as this project largely focuses on the DevOps tooling and principles surrounding the app.

The DevOps tooling includes:

- Azure pipelines

## Getting Started

### Dependencies

- Describe any prerequisites, libraries, OS version, etc., needed before installing program.
- ex. Windows 10

### Installing

- Git clone the repo down
- Install gradle, JDK, and npm (using brew most likely)
- Install the docker engine to containerize the application

### Executing program manually

To run the application locally:
In shell #1:

```shell
./gradlew bootRun
```

In shell #2:

```shell
npm start
```

From shell #3:

```shell
curl localhost:8080/joke
```

### Executing using Docker

To run using a single Docker container, `cd` into the root directory and run the following commands.
The first will build the app and tag it as `my-app`, while the second runs it,
exposing port 8080 on your local machine to forward into the container's port 8080.

```shell
docker build -t my-app .
docker run -p 8080:8080 my-app
```

You should now be able to curl `localhost:8080` and see the app running!

## Automation

## Security

The Azure repository has several security features enabled, mocking a real production-like environment

- I have created a PAT to authenticate Azure Pipelines running locally against the cloud. This token expires in 30 days, is stored locally in a 1password vault, and has scoped permissions for Agent Pools management only.
- Added myself as the only approved approver for PRs (and for now allowed myself to self-approve PRs, one man team!)
- Vulnerability scanning in GCR and in the build pipeline using Trivy
  - This would in the future be linked to slack notifications and/or automated JIRA ticket creation to help promote security best-practices
  - More security tooling such as [git-secrets](https://github.com/awslabs/git-secrets) and [rootfs](https://aquasecurity.github.io/trivy/v0.27.1/docs/vulnerability/scanning/rootfs/) scanning would be introduced here


![trivy-results](img/trivy.png)

## TODO

Given more time, here are some ideas of how I would expand on this project:

1. Codify the release pipelines - today they were manually created however this can lead to infrastructure drift and lack of standardization

## Authors

[Roee Landesman](https://github.com/roee-landesman)

TODO:

- Terraform the resources used
- Documentation everywhere
