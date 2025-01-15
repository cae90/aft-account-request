module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cae+lab01-audit@amazon.com"
    AccountName               = "Audit"
    ManagedOrganizationalUnit = "Security" 
    SSOUserEmail              = "cae+lab01-audit@amazon.com"
    SSOUserFirstName          = "Audit"
    SSOUserLastName           = "Security"
  }

  account_tags = {
    "ABC:Owner"       = "cae@amazon.com.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Audit"
}
module "account_request_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cae+mn+lab01@amazon.com"
    AccountName               = "Management"
    ManagedOrganizationalUnit = "Root" 
    SSOUserEmail              = "cae@amazon.com"
    SSOUserFirstName          = "Carlos"
    SSOUserLastName           = "Enriquez"
  }

  account_tags = {
    "ABC:Owner"       = "cae@amazon.com.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Management"
}