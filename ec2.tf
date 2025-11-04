resource "aws_instance" "arpit-devops" {

    ami = "ami-0a25a306450a2cba3"
    instance_type = "t2.nano"
    key_name = "roche-key"

    tags = {
      Name = "arpit-devops"
    }
}