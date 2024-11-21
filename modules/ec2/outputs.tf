output "function_name" {
  description = "Name of the VPC function."
  value       = aws_vpc_function.hello_world.function_name
}

output "invoke_arn" {
  description = "The invocation ARN of the function"
  value       = aws_vpc_function.hello_world.invoke_arn
}
