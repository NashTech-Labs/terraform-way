resource "aws_pinpoint_app" "opp-notifications" {
  name = var.pinpoint_name

  tags = {
    environment = var.environment
    team = var.team
  }
}

resource "aws_pinpoint_sms_channel" "opp-notifications" {
  application_id = aws_pinpoint_app.opp-notifications.application_id
}





/*resource "aws_iam_role" "opp-notifications-pinpoint-role" {
  name = "opp-notifications-pinpoint-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "pinpoint.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "opp-notifications-pinpoint-policy" {
  name = "opp-notifications-pinpoint-policy"
  role = aws_iam_role.opp-notifications-pinpoint-role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "kms:GenerateDataKey"
        ],
    "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "kinesis:PutRecord",
        "kinesis:PutRecords",
        "kinesis:DescribeStream"
        ],
      "Resource": "*"
    }
  ]
}
EOF
}
*/
