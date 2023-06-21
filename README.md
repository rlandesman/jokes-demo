# Jokes Demo

An application to serve random jokes

## Description

This application is built using a React frontend and a Springboot backend. Truthfully there is nothing fancy nor unique
about the application code, as this project largely focuses on the DevOps tooling and principles surrounding the app.

The DevOps tooling includes:
- Azure pipelines

## Getting Started

### Dependencies

* Describe any prerequisites, libraries, OS version, etc., needed before installing program.
* ex. Windows 10

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

## Automation

## Security

The Azure repository has several security features enabled, mocking a real production-like environment

- I have created a PAT to authenticate Azure Pipelines running locally against the cloud. This token expires in 30 days, is stored locally in a 1password vault, and has scoped permissions for Agent Pools management only.
- Added myself as the only approved approver for PRs (and for now allowed myself to self-approve PRs, one man team!)
-

## Help

Any advise for common problems or issues.
```
command to run if program contains helper info
```

## Authors

[Roee Landesman](https://github.com/roee-landesman)

## Version History

- 0.1
  - Initial Release

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments

Inspiration, code snippets, etc.
* [awesome-readme](https://github.com/matiassingers/awesome-readme)
* [PurpleBooth](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
* [dbader](https://github.com/dbader/readme-template)
* [zenorocha](https://gist.github.com/zenorocha/4526327)
* [fvcproductions](https://gist.github.com/fvcproductions/1bfc2d4aecb01a834b46)


TODO:

- Terraform the resources used
- Documentation everywhere
