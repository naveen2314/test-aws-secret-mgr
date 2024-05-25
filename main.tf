# # module "secrets" {
# #   source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=0c26db1"

# #   for_each = var.secrets

# #   secret_name   = each.key
# #   secret_string = each.value

# #   description = "Managed by Terraform"
# #   tags        = var.tags

# # }

# resource "aws_secretsmanager_secret" "example" {
#   name        = "example-secret" # Replace with your desired secret name
#   description = "An example secret"
# }

# resource "aws_secretsmanager_secret_version" "example" {
#   secret_id     = aws_secretsmanager_secret.example.id
#   secret_string = "" # Initial blank value

# }


# resource "aws_secretsmanager_secret" "example" {
#   name = "new-secret-mgr"
# }



# __generated__ by Terraform from "arn:aws:secretsmanager:us-east-1:637423167506:secret:first-test-secret-7WXmd6"
# resource "aws_secretsmanager_secret" "first-test-secret" {
#   description                    = "this is first test secret with key only"
#   force_overwrite_replica_secret = null
#   kms_key_id                     = null
#   name                           = "first-test-secret"
#   name_prefix                    = null
#   policy                         = null
#   recovery_window_in_days        = null
#   tags                           = {}
#   tags_all                       = {}
# }


# resource "aws_secretsmanager_secret_version" "secrets" {
#   for_each = var.secrets

#   secret_id     = aws_secretsmanager_secret.secrets[each.key].id
#   secret_string = each.value.value
# }

resource "aws_secretsmanager_secret" "secrets" {
  for_each = var.secrets

  name        = each.key
  description = "Secret managed by Terraform: ${each.key}"

  # Optionally, you can specify the initial secret value here
  # secret_string = each.value.value
}
