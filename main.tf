module "secrets" {
  source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=b1bb696"

  for_each = var.secrets

  name          = lookup(each.value, "name")
  description   = lookup(each.value, "description", "")
  secret_string = lookup(each.value, "secret_string")
  # create_version = lookup(each.value, "create_version", false)
  # secret_string  = lookup(each.value, "secret_string", null)

}
