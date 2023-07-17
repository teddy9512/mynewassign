# mynewassign
This is three tier achitecture terraform code for creating aws env with alb,ec2,autoscaling group along with scalein policy,s3,security group along with cloudfront for accessing different region.


step1: create bastion instance and make sure to add required access and secret key in aws configure as "terraform-profile" in profile name and install terraform.
step2:clone from this repository and edit below details
     * create s3 bucket for state file--> cf-main-state-file-bucket-dev
     * create dynamodb table for statelock-->cf-dev
     * edit account number in provider.tf
     * create bastion key in key pair
step 3: Make sure below changes in variable.tf
     * create one acm in eu-west-1 region and virginia for cloudfront used for reguired  domain and configure arn in certificate_arn under line no.41
     * import same acm in n.virginia for cloudfront
     * create record under hosted zone as per required domain.
