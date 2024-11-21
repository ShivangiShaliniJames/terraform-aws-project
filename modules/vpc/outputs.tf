output "hello_url" {
  description = "URL for invoking our VPC function"

  value = aws_apigatewayv2_stage.vpc.invoke_url
}
