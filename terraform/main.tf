module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ankithla+terraformaccount@amazon.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "LearnAFT"
    SSOUserEmail              = "ankithla+terraformaccount@amazon.com"
    SSOUserFirstName          = "TerraformAccount"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
