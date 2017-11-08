# domain
# assumes you have a hosted zone of the same name in route 53
# this is also the name of the domain that will be created in mailgun
# running terraform will create the necessary A, CNAME, TXT, and MX records in route 53
domain  = "codeblink.com"

# aws
region                          = "us-east-1"
aws_access_key                  = ""
aws_secret_key                  = ""
