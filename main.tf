 

module "two-way-notifications-pinpoint" {
  source = "./modules/pinpoint"
  pinpoint_name = "two-way-sms-pinpoint-app-${var.environment}-environment-demo1"
  kinesis_stream_arn = module.two-way-notifications-kinesis-stream.kinesis_stream_arn
  datacenter = var.datacenter
  environment = var.environment
  team = var.team
}

module "two-way-notifications-kms-encryption-key" {
  source = "./modules/kms"
  datacenter = var.datacenter
  environment = var.environment
  team = var.team
  account_id = var.account_id
  kms_key_alias = var.kms_key_alias
}

module "two-way-notifications-kinesis-stream" {
  kinesis_stream_name = "aws-sms-tracker-kinesis-stream-${var.environment}-environment-demo1"
  source = "./modules/kinesis_stream"
  datacenter = var.datacenter
  environment = var.environment
  gcp_environment = var.gcp_environment
  team = var.team

}
