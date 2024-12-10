#!/bin/bash

# Set AWS region
AWS_REGION="us-east-1"

# Deploy the Docker image to Elastic Beanstalk
eb init -p docker my-app --region $AWS_REGION
eb create my-app-env --region $AWS_REGION
eb deploy --region $AWS_REGION

# Check the status of the app
eb status --region $AWS_REGION