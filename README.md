# deepstack-recorder
Sits in front of your deepstack instance and records all data flowing to &amp; from deepstack

- fastAPI endpoints sit in front of deepstack, ideally on the same IP but a different port
- metadata about the request, and response to the request is recorded to a sqlite db
- a front end using datasette allows reviewing the data
- optionally the images can be stored on S3
- use docker for isolation
