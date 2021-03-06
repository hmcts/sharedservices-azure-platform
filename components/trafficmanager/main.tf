module "ctags" {
  source      = "git::https://github.com/hmcts/terraform-module-common-tags.git?ref=master"
  environment = var.environment
  product     = var.product
  builtFrom   = var.builtFrom
}

module "traffic_manager" {
  source = "git::https://github.com/hmcts/terraform-module-trafficmanager.git?ref=master"

  common_tags = module.ctags.common_tags

  traffic_manager_endpoints = var.traffic_manager_endpoints

  traffic_manager_profiles = var.traffic_manager_profiles
}
