resource "tls_private_key" "arpit-tf-key" {

    algorithm = var.private-key-algo
    rsa_bits = var.key-size


  
}
#save my private key
resource "local_file" "private_key_data" {
  content =  tls_private_key.arpit-tf-key.private_key_pem
  filename = "${path.module}/arpit-key.pem"
  file_permission = 0400
  depends_on = [tls_private_key.arpit-tf-key ]
}


#sending public key to aws cloud account

resource "aws_key_pair" "arpit_aws_pub_key" {

    public_key = tls_private_key.arpit-tf-key.public_key_openssh    
    key_name = var.ec2_key_name
    depends_on = [ tls_private_key.arpit-tf-key ]
    
}