variable "domain"                          { }
variable "region"                          { }
variable "aws_access_key"                  { }
variable "aws_secret_key"                  { }
variable "aws_lambda_function_timeout"     { }
variable "aws_lambda_function_memory_size" { }
variable "env_vars"                        { type = "map" }

provider "aws" {
  region        = "${var.region}"
  access_key    = "${var.aws_access_key}"
  secret_key    = "${var.aws_secret_key}"
}


module "app" {
  source                          = "../modules/app-prod"
  app_package                     = "../../app/build.zip"
  domain                          = "${var.domain}"
  env_vars                        = "${var.env_vars}"
  render_interval                 = "15 minutes"
  aws_lambda_function_timeout     = "${var.aws_lambda_function_timeout}"
  aws_lambda_function_memory_size = "${var.aws_lambda_function_memory_size}"
}
