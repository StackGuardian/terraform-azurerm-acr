variable "registry_name" {
  description = "(Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created."
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
}

variable "sku" {
  description = "Optional) The SKU name of the container registry. Possible values are Classic (which was previously Basic), Basic, Standard and Premium."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Is admin enabled for this Container Registry?"
  type        = bool
  default     = false
}

variable "georeplications" {
  description = "A list of properties of the geo-replication blocks for this Container Registry. Only availiable for Premium SKU."

  type = list(object({
    location                = string                # The location where this Container Registry should be geo-replicated.
    zone_redundancy_enabled = optional(bool, false) # Is zone redundancy enabled for this replication location?
  }))

  default = []
}