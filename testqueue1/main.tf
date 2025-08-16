terraform {
	backend "s3" {
		bucket 					= "danielb-tf-state"
		workspace_key_prefix 	= "env:"
		key 					= "sqs/testqueue1.tfstate"
		region 					= "us-east-1"
	}
}

module "m-queue" {
	source			= "git::https://github.com/dbigelow/terraform_module_test.git//sqs/m-queue"
	aws-region = var.aws-region
	aws-profile = var.aws-profile
	queuename = var.queuename
	owner = var.owner
	delay_seconds = var.delay_seconds
	visibility_timeout_seconds = var.visibility_timeout_seconds
	max_message_size = var.max_message_size
	message_retention_seconds = var.message_retention_seconds
	receive_wait_time_seconds = var.receive_wait_time_seconds
	sqs_managed_sse_enabled = var.sqs_managed_sse_enabled
	dlq-enabled = var.dlq-enabled
}