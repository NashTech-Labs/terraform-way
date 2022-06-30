output "kms_key_id" {
  value = aws_kms_key.opp-notifications.key_id
}

output "kms_alias" {
  value = aws_kms_alias.opp-notifications.name
}
