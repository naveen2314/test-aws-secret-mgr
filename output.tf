output "secrets_arns" {
  description = "The ARNs of the created secrets"
  value       = { for k, v in module.secrets : k => v.secret_arn }
}

output "secrets_id" {
  description = "The names of the created secrets"
  value       = { for k, v in module.secrets : k => v.secret_id }
}
