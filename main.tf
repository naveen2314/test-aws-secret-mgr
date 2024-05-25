module "secrets" {
  source = "git::https://github.com/naveen2314/aws-secrert-mgr-module.git?ref=185704f"

  for_each = var.secrets

  name        = lookup(each.value, "name")
  description = lookup(each.value, "description", "")
}
