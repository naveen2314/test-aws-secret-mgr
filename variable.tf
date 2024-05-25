variable "secrets" {
  description = "Map of secret names and their values"
  type        = map(string)
  default     = {} # Provide an empty map as default
}

variable "tags" {
  description = "A map of tags to assign to the secrets"
  type        = map(string)
  default     = {}
}
