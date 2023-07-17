#ENV name
variable "env" {
 type = string
 default = "dev04"
}

#VPC details
variable "vpccidr" {
  default = "10.10.0.0/16"
}
variable "pubsub1cidr" {
  default = "10.10.0.0/24"
}
variable "pubsub2cidr" {
  default = "10.10.1.0/24"
}
variable "pubsub3cidr" {
  default = "10.10.2.0/24"
}
variable "prisub1cidr" {
  default = "10.10.3.0/24"
}
variable "prisub2cidr" {
  default = "10.10.4.0/24"
}
variable "prisub3cidr" {
  default = "10.10.5.0/24"
}




#ALB details for backend servers (Nakama service included)
variable "application_alb" {
 type         = string
 default      = "application-alb"
 description  = "alb for application server"
}
variable "certificate_arn" {
  type        = string
  default     = "arn:aws:acm:eu-west-1:xxxx:certificate/xxxxxx"
  description = "ACM certificate for application alb listner"
}

#ASG details for ec2
variable "admin_ec2_name" {
  type        = string
  default     = "cf-admin"
  description = "ec2 name for admin serivce"
}

variable "min_size" {
  type        = string
  default     = "1"
  description = "min size of ASG ec2 instance"
}
variable "max_size" {
  type        = string
  default     = "3"
  description = "max size of ASG ec2 instance"
}
variable "desired_capacity" {
  type        = string
  default     = "1"
  description = "desired capacity of ASG ec2 instance"
}
variable "health_check_type" {
  type        = string
  default     = ""
  description = "description"
}
variable "ami_id" {
  type        = string
  default     = "ami-0fb2f0b847d44d4f0"
  description = "AMI id to create an ASG ec2 instances"
}
variable "instance_type" {
  type        = string
  default     = "t2.medium"
  description = "Instance type of ASG ec2 instances"
}
variable "volume_size" {
  type        = string
  default     = "30"
  description = "volume size of ASG ec2 instances"
}
variable "app_instance_profile_arn" {
  type        = string
  default     = "arn:aws:iam:xxxxx:instance-profile/terraform-service-role"
  description = "IAM role to attach ASG ec2 instances"
}
variable "key_name" {
  type        = string
  default     = "bastion"
  description = "ssh key name of ASG ec2 instances"
}
variable "cpu_high_asg_cooldown_period" {
 type         = string
 default      = "300"
}
variable "cpu_low_asg_cooldown_period" {
 type         = string
 default      = "100"
}


#S3 bucket for admin site and customer site details
variable "s3_admin_bucket_name" {
 type         = string
 default      = "cf-admin"
}


variable "admin_domain_name" {
 type         = string
 default      = "xxxxx.com"
}

#CloudFront details of admin and customer site
variable "cert_cloud" {
 type         = string
 default      = "arn:aws:acm:us-east-1:xxxxxx:certificate/xxxxxxxxx"
}
variable "common_tags" {
  description = "Common tags you want applied to all components."
}



