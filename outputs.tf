output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "id" {
  description = "ID of the Elastic IP"
  value       = try(aws_eip.this[0].id, null)
}

output "allocation_id" {
  description = "Allocation ID of the Elastic IP"
  value       = try(aws_eip.this[0].allocation_id, null)
}

output "public_ip" {
  description = "Public IP address"
  value       = try(aws_eip.this[0].public_ip, null)
}
