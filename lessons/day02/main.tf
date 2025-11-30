resource "aws_vpc" "ravindra_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "ravindra_vpc"
    }
}

resource "resource_type" "my_resource" {
  #Configuration options
  #Resource arguments
  instance_type = "t2.micro"
  ami           = "ami-0c55b159cbfafe1f0"
}


resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}