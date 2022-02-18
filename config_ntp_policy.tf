data "intersight_organization_organization" "organization_moid" {
  name = var.organization_name
}
output "organization_moid" {
  value = data.intersight_organization_organization.organization_moid.results[0].moid
}

resource "intersight_ntp_policy" "PODX" {
  name        = "${var.organization_name}-ntp-policy"
  description = "test policy from terraform"
  enabled     = true
  ntp_servers = [
    "pool.ntp.org"
  ]
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.organization_moid.results[0].moid 
  }
}

