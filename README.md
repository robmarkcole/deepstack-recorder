# deepstack-recorder
Sits in front of your deepstack instance and records all data flowing to &amp; from deepstack

- fastAPI endpoints sit in front of deepstack, ideally on the same IP but a different port
- metadata about the request, and response to the request is recorded to a sqlite db
- a front end using [datasette](https://datasette.io/) allows reviewing the data
- optionally the images can be stored on S3
- use docker for isolation

## Build Dockerfile and run
Build and run locally:
```
$ docker build -t deepstack-recorder .
$ docker run -e AWS_ACCESS_KEY_ID=xyz -e AWS_SECRET_ACCESS_KEY=aaa deepstack-recorder:latest
```

## Run within docker
If you are using devcontainer and want to run interactively, export your AWS creds then run:
```
export AWS_ACCESS_KEY_ID=yours
export AWS_SECRET_ACCESS_KEY=yours
cd source
python main.py
```