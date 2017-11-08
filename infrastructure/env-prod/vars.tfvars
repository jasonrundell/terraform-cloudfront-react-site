# domain
# assumes you have a hosted zone of the same name in route 53
# this is also the name of the domain that will be created in mailgun
# running terraform will create the necessary A, CNAME, TXT, and MX records in route 53
domain  = "codeblink.com"

# aws
region                          = "us-east-1"
aws_access_key                  = ""
aws_secret_key                  = ""
aws_lambda_function_timeout     = 60
aws_lambda_function_memory_size = 512

# application environment variables for our lambda function
env_vars = {
  NODE_ENV = "production"

  # google analytics
  # go to https://analytics.google.com and create a new property
  # paste the tracking code below
  GA_TRACKING_ID = "UA-41066346-1"
}
