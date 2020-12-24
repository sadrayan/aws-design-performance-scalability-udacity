# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile                 = "default"
  region                  = "us-east-2"
  shared_credentials_file = "~/.aws/credentials"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-0a0ad6b70e61be944"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07bd719897896f8c0"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# Comment to delete EC2 instances
# resource "aws_instance" "Udacity_M4" {
#   ami           = "ami-0a0ad6b70e61be944"
#   count         = "2"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-07bd719897896f8c0"
#   tags = {
#     Name = "Udacity M4"
#   }
# }



