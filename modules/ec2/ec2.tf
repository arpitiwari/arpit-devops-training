resource "aws_instance" "arpit-devops" {

    #ami = "ami-0a25a306450a2cba3"
    count = var.novm
    ami = var.arpit-ami-id
    instance_type = var.vm-size
    key_name = aws_key_pair.arpit_aws_pub_key.key_name
    security_groups = [aws_security_group.arpit-security-group.name ]
    vpc_security_group_ids = [ aws_security_group.arpit-security-group.id ]
    tags = {
      Name = "${var.vm-name}-${count.index}"
    }
    depends_on = [ tls_private_key.arpit-tf-key,aws_key_pair.arpit_aws_pub_key ]
    #terraform provisioner

# provisioner "remote-exec" {

#   inline = [
#      "sudo dnf install git httpd -y",
#      "mkdir -p hello/terraform"
#     ]

# }


# connection {

#   type = "ssh"
#   user = "ec2-user"
#   host = self.public_ip
#   #content of private key data
#   private_key = tls_private_key.arpit-tf-key.private_key_pem
# }
 
}


