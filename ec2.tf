resource "aws_instance" "arpit-devops" {

    #ami = "ami-0a25a306450a2cba3"
    ami = var.arpit-ami-id
    instance_type = var.vm-size
    key_name = aws_key_pair.arpit_aws_pub_key.key_name

    tags = {
      Name = var.vm-name
    }
}
