FROM python:3.8

WORKDIR /workspaces
COPY requirements.txt ./
RUN pip install -r requirements.txt

#Set up source
RUN mkdir -p /source
COPY source /source
WORKDIR /source

CMD ["/bin/bash"]