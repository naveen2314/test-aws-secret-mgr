# module "secrets" {
#   source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=0c26db1"

#   for_each = var.secrets

#   secret_name   = each.key
#   secret_string = each.value

#   description = "Managed by Terraform"
#   tags        = var.tags

# }

resource "aws_secretsmanager_secret" "example" {
  name        = "example-secret" # Replace with your desired secret name
  description = "An example secret"

  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = "" # Initial blank value

  lifecycle {
    ignore_changes = [
      secret_string
    ]
  }
}
