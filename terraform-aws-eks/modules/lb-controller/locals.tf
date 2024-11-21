locals {
  oidc = split("/", var.oidc_id)[4]
}