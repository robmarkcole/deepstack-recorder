# deepstack-recorder
Sits in front of your deepstack instance and records all data flowing to &amp; from deepstack

- fastAPI endpoints sit in front of deepstack
- metadata about the request, and response to the request is recorded to a sqlite db
- a front end using datasette aloows reviewing the data
- optionally the image can be stored locally and/or on S3
- use docker for isolation
