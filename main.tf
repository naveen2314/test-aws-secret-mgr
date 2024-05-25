module "secrets" {
  source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=0c26db1"

  for_each = var.secrets

  secret_name   = each.key
  secret_string = each.value

  description = "Managed by Terraform"
  tags        = var.tags

}
