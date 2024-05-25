module "secrets" {
  source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=e1d93f3"

  for_each = var.secrets

  name        = lookup(each.value, "name")
  description = lookup(each.value, "description", "")
  # create_version = lookup(each.value, "create_version", false)
  # secret_string  = lookup(each.value, "secret_string", null)

}
