output "s3_policy_arn" {
  value = aws_iam_policy.s3_policy[*].arn
}

output "s3_bucket" {
  value = local.s3_bucket_id
}

output "s3_bucket_arn" {
  value = local.s3_bucket_arn
}

output "s3_policy_json" {
  value = length(var.s3_actions) > 0 ? jsondecode(data.aws_iam_policy_document.s3_access_policy[0].json) : null
}

output "s3_replica_policy_json" {
  value = jsondecode(data.aws_iam_policy_document.replica_access_policy.json)
}
