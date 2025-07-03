# 8. ec2.tf --------------------------------------------------------------------
resource "aws_instance" "web" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = element(data.aws_subnets.default.ids, 0)
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  key_name                    = var.key_pair_name
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name

  user_data = <<-USERDATA
    #!/bin/bash
    yum install -y nginx
    echo "Hello World" > /usr/share/nginx/html/index.html
    systemctl enable --now nginx
  USERDATA

  tags = {
    Name = "${var.project}-web"
  }
}