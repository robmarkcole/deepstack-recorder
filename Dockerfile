FROM mcr.microsoft.com/vscode/devcontainers/python:0-3.8

#Set up enc
WORKDIR /workspaces
COPY requirements.txt ./
RUN pip install -r requirements.txt

#Set up source
RUN mkdir -p /source
COPY source /source
WORKDIR /source

ENTRYPOINT  ["python"]

#Default arguments to run test
CMD ["main.py"]