variable "account-request-table" {
  type        = string
  description = "name of account-request-table"
  default     = "aft-request"
}

variable "account-request-table-hash" {
  type        = string
  description = "name of account-request-table hash key"
  default     = "id"
}

variable "control_tower_parameters" {
  type = object({
    AccountEmail              = "cae+lab01-audit@amazon.com"
    AccountName               = "Audit"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "cae+lab01-audit@amazon.com"
    SSOUserFirstName          = "Audit"
    SSOUserLastName           = "Security"
  })
}

variable "change_management_parameters" {
  type = object({
    change_requested_by = "Admin Audit"
    change_reason       = "Asociate Audit With AFT"
  })
}

variable "account_tags" {
  type        = map(any)
  description = "map of account-level tags"
}

#variable "custom_fields" {
#  type        = map(any)
#  description = "map of custom fields defined by the customer"
#  default     = {}
#}

variable "account_customizations_name" {
  type        = string
  default     = "Audit"
  description = "The name of the account customizations to apply"
}
