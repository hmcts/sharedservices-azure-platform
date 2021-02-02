project                    = "sdshmcts"
location                   = "uksouth"
env                        = "prod"
subscription               = "prod"
certificate_key_vault_name = "dtssharedservicesprodkv"
oms_env                    = "prod"
key_vault_resource_group   = "genesis-rg"
private_ip_address         = "10.144.32.132"
destinations               = ["10.144.15.250", "10.144.31.250"]
vnet_rg                    = "ss-prod-network-rg"
vnet_name                  = "ss-prod-vnet"
vault_name                 = ""

frontends = [
  {
    name             = "trib-land-reg-division"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "landregistrationdivision.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "ddlScat1"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__EVENTVALIDATION"
      }
    ]
  },
  {
    name             = "trib-immigration-svcs"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "immigrationservices.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "btnSearch"
      }
    ]
  },
  {
    name             = "trib-info-rights"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "informationrights.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__VIEWSTATE"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__EVENTVALIDATION"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "ddlTax3"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "ddlTax2"
      }
    ]
  },
  {
    name             = "trib-admin-appeals"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "administrativeappeals.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__VIEWSTATE"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "btnSearch"
      }
    ]
  },
  {
    name             = "trib-care-standards"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "carestandards.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__VIEWSTATE"
      },
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "drpMainCategory"
      }
    ]
  },
  {
    name             = "trib-lands-chamber"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "landschamber.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "btnSearch"
      }
    ]
  },
  {
    name             = "trib-finance-tax"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "financeandtax.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "PostParamValue:btnSearch"
        operator       = "Equals"
        selector       = "Search >>"
      }
    ]
  },
  {
    name             = "trib-employment-appeals"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "employmentappeals.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__VIEWSTATE"
      }
    ]
  },
  {
    name             = "trib-tansport-appeals"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "transportappeals.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "btnSearch"
      }
    ]
  },
  {
    name             = "trib-cicap"
    product          = "ss"
    mode             = "Prevention"
    custom_domain    = "cicap.decisions.tribunals.gov.uk"
    backend_domain   = ["34.243.192.28"]
    certificate_name = "decisions-tribunals-gov-uk"
    global_exclusions = [
      {
        match_variable = "RequestBodyPostArgNames"
        operator       = "Equals"
        selector       = "__VIEWSTATE"
      }
    ]
  }
]
