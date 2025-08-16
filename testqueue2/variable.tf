variable "aws-region" {
	type = string
}
variable "aws-profile" {
	type = string
}
variable "queuename" {
	type = string
}


variable "owner" {
	type = string
}

variable "delay_seconds" {
	type	= number
}

variable "visibility_timeout_seconds" {
	type	= number
}

variable "max_message_size" {
	type 	= number
}

variable "message_retention_seconds" {
	type	= number
}

variable "receive_wait_time_seconds" {
	type = number
}

variable "sqs_managed_sse_enabled" {
	type = bool
}