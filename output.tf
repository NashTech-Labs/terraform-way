
output "Pinpoint_app_id" {
  value = module.two-way-notifications-pinpoint.pinpoint_application_id
}

output "Pinpoint_app_name" {
  value = module.two-way-notifications-pinpoint.pinpoint_application_name
}

output "Pinpoint_app_arn" {
  value = module.two-way-notifications-pinpoint.pinpoint_application_arn
}


output "kinesis_stream_id" {
  value = module.two-way-notifications-kinesis-stream.kinesis_stream_id
}

output "kinesis_stream_arn" {
  value = module.two-way-notifications-kinesis-stream.kinesis_stream_arn
}

output "kinesis_stream_name" {
  value = module.two-way-notifications-kinesis-stream.kinesis_stream_name
}
