resource "aws_sns_topic" "tableau_alarms" {
  name = var.sns_topic_name
}
