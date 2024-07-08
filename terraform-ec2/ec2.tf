resource "aws_key_pair" "key-pair" {
  key_name   = "aws-terraform-key"
  public_key = file("./aws-terraform-key.pub")
}

resource "aws_instance" "ec2" {
  ami                         = "ami-04a81a99f5ec58529"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.key-pair.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet-id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.sg-id]
  associate_public_ip_address = true

  tags = {
    Name = "ec2-terraform"
  }

}