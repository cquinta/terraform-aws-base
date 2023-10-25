provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "aula01" {
    ami = "ami-0fc5d935ebf8bc3bc"
    instance_type = "t2.micro"
    key_name = "vockey"
    vpc_security_group_ids = ["sg-0649c04fe4155b5a7"]
    tags = {
        Name = "instance-terraform",
        CreatedBy = "Terraform"
    }   
  
}

output "VM-ID" {
  value = aws_instance.aula01.id
}

output "VM-Public-IP" {
  value = aws_instance.aula01.public_ip
} 
