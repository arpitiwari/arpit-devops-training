variable "arpit-ami-id" {

    type = string
    description = "this is my sydney aws region ami id"
    
  
}

variable "vm-name" {

      type = string 
}

variable "vm-size" {

     type = string
  
}

variable "ec2_key_name" {

    type = string
  
}

variable "private-key-algo" {
  
  type = string
}

variable "key-size" {
  
  type= number
}

variable "my-vpc-id" {
  
}

variable "my-sec-group-name" {
  
}