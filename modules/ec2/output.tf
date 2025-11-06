# public ip of my ec2 vm

output "arpit-ec2-publicIP" {

    value =aws_instance.arpit-devops[*].public_ip
  
}

output "arpit-ec2ID" {

    value = aws_instance.arpit-devops[*].id
  
}

resource "local_file" "outputfile" {

    filename = "${path.module}/myip.txt"
    content = join("\n",aws_instance.arpit-devops[*].public_ip)
    depends_on = [ aws_instance.arpit-devops ]
  
}

