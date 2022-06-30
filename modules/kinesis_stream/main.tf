resource "aws_kinesis_stream" "opp-notifications" {
  name = var.kinesis_stream_name
  shard_count = 3
  retention_period = 24


  tags = {
    environment = var.environment
    team = var.team
  }
}

resource "aws_kinesis_stream_consumer" "opp-notification" {
  name       = "${var.environment}.aws-sms-tracker"
  stream_arn = aws_kinesis_stream.opp-notifications.arn
}

resource "aws_kinesis_stream_consumer" "opp-notification-gcp" {
  name       = "${var.gcp_environment}-gcp1.aws-sms-tracker"
  stream_arn = aws_kinesis_stream.opp-notifications.arn
}
