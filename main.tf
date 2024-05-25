module "secrets" {
  source = "./modules/terraform-aws-secrets-manager"

  for_each = var.secrets

  name           = lookup(each.value, "name")
  description    = lookup(each.value, "description", "")
  create_version = lookup(each.value, "create_version", false)
  secret_string  = lookup(each.value, "secret_string", null)

}
