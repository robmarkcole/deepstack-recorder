FROM python:3.8

EXPOSE 8000

#Set up enc
WORKDIR /workspaces
COPY requirements.txt ./
RUN pip install -r requirements.txt

#Set up source
RUN mkdir -p /source
COPY source /source
WORKDIR /source


CMD [ "uvicorn", "main:app", "--reload", "--port", "8000", "--host", "0.0.0.0" ]