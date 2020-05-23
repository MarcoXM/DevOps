## https://stackoverflow.com/questions/48568172/docker-sock-permission-denied
## https://askubuntu.com/questions/747778/docker-warning-config-json-permission-denied
FROM python:3.6.8-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/
COPY . requirements.txt /app/
COPY . model_data/boston_housing_prediction.joblib /app/model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python" ,"app.py"]
