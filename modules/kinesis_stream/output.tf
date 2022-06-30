output "kinesis_stream_id" {
  value = aws_kinesis_stream.opp-notifications.id
}

output "kinesis_stream_name" {
  value = aws_kinesis_stream.opp-notifications.name
}

output "kinesis_stream_arn" {
  value = aws_kinesis_stream.opp-notifications.arn
}
