variable "lambda_capacity_providers" {
  description = <<EOT
Map of lambda_capacity_providers, attributes below
Required:
    - name
Optional:
    - kms_key_arn
    - region
    - tags
    - capacity_provider_scaling_config (block):
        - max_vcpu_count (optional)
        - scaling_mode (optional)
        - scaling_policies (optional, block):
            - predefined_metric_type (optional)
            - target_value (optional)
    - instance_requirements (block):
        - allowed_instance_types (optional)
        - architectures (optional)
        - excluded_instance_types (optional)
    - permissions_config (block):
        - capacity_provider_operator_role_arn (required)
    - vpc_config (block):
        - security_group_ids (required)
        - subnet_ids (required)
EOT

  type = map(object({
    name        = string
    kms_key_arn = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    capacity_provider_scaling_config = optional(list(object({
      max_vcpu_count = optional(number)
      scaling_mode   = optional(string)
      scaling_policies = optional(list(object({
        predefined_metric_type = optional(string)
        target_value           = optional(number)
      })))
    })))
    instance_requirements = optional(list(object({
      allowed_instance_types  = optional(list(string))
      architectures           = optional(list(string))
      excluded_instance_types = optional(list(string))
    })))
    permissions_config = optional(list(object({
      capacity_provider_operator_role_arn = string
    })))
    vpc_config = optional(list(object({
      security_group_ids = set(string)
      subnet_ids         = set(string)
    })))
  }))
}

