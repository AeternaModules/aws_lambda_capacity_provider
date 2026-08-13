output "lambda_capacity_providers_id" {
  description = "Map of id values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_capacity_providers_arn" {
  description = "Map of arn values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "lambda_capacity_providers_capacity_provider_scaling_config" {
  description = "Map of capacity_provider_scaling_config values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.capacity_provider_scaling_config if v.capacity_provider_scaling_config != null && length(v.capacity_provider_scaling_config) > 0 }
}
output "lambda_capacity_providers_instance_requirements" {
  description = "Map of instance_requirements values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.instance_requirements if v.instance_requirements != null && length(v.instance_requirements) > 0 }
}
output "lambda_capacity_providers_kms_key_arn" {
  description = "Map of kms_key_arn values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "lambda_capacity_providers_name" {
  description = "Map of name values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lambda_capacity_providers_permissions_config" {
  description = "Map of permissions_config values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.permissions_config if v.permissions_config != null && length(v.permissions_config) > 0 }
}
output "lambda_capacity_providers_region" {
  description = "Map of region values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lambda_capacity_providers_tags" {
  description = "Map of tags values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lambda_capacity_providers_tags_all" {
  description = "Map of tags_all values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "lambda_capacity_providers_vpc_config" {
  description = "Map of vpc_config values across all lambda_capacity_providers, keyed the same as var.lambda_capacity_providers"
  value       = { for k, v in aws_lambda_capacity_provider.lambda_capacity_providers : k => v.vpc_config if v.vpc_config != null && length(v.vpc_config) > 0 }
}

