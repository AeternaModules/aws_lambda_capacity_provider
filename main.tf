resource "aws_lambda_capacity_provider" "lambda_capacity_providers" {
  for_each = var.lambda_capacity_providers

  name        = each.value.name
  kms_key_arn = each.value.kms_key_arn
  region      = each.value.region
  tags        = each.value.tags

  dynamic "capacity_provider_scaling_config" {
    for_each = each.value.capacity_provider_scaling_config != null ? each.value.capacity_provider_scaling_config : []
    content {
      max_vcpu_count = capacity_provider_scaling_config.value.max_vcpu_count
      scaling_mode   = capacity_provider_scaling_config.value.scaling_mode
      dynamic "scaling_policies" {
        for_each = capacity_provider_scaling_config.value.scaling_policies != null ? capacity_provider_scaling_config.value.scaling_policies : []
        content {
          predefined_metric_type = scaling_policies.value.predefined_metric_type
          target_value           = scaling_policies.value.target_value
        }
      }
    }
  }

  dynamic "instance_requirements" {
    for_each = each.value.instance_requirements != null ? each.value.instance_requirements : []
    content {
      allowed_instance_types  = instance_requirements.value.allowed_instance_types
      architectures           = instance_requirements.value.architectures
      excluded_instance_types = instance_requirements.value.excluded_instance_types
    }
  }

  dynamic "permissions_config" {
    for_each = each.value.permissions_config != null ? each.value.permissions_config : []
    content {
      capacity_provider_operator_role_arn = permissions_config.value.capacity_provider_operator_role_arn
    }
  }

  dynamic "vpc_config" {
    for_each = each.value.vpc_config != null ? each.value.vpc_config : []
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }
}

