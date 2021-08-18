module "hello_world_lambda" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "hello-world-lambda"
  description   = "Hello world lambda"

  # Add versioning to avoid error: "We currently do not support adding policies for $LATEST."
  # Ref: https://github.com/terraform-aws-modules/terraform-aws-lambda#faq
  publish = true

  runtime                = "nodejs14.x"
  handler                = "index.handler"
  create_package         = false
  local_existing_package = "../hello-world-lambda/build/lambda.zip"
}
