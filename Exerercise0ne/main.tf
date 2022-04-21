provider "aws" {
    access_key = "AKIA2VFVZIPEWVEGFC5W"
  secret_key = "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"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
ami = "ami-0c02fb55956c7d316"
count = 4
instance_type = "t2.micro"
tags = {
    name = "Udacity T2"
}
subnet_id = "subnet-016f990f35e2e3089"
vpc_security_group_ids = ["sg-0a7f276c35dcbdee2"]
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "udacity_m4" {
ami = "ami-09d95fab7fff3776c"
count = 2
instance_type = "m4.large"
tags = {
    name = "Udacity M4"
}
subnet_id = "subnet-016f990f35e2e3089"
vpc_security_group_ids = ["sg-0a7f276c35dcbdee2"]
}