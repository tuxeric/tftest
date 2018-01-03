variable "name"  {}
variable "server_port"  {}

resource "aws_security_group" "instance" {
  name = "${var.name}"
  vpc_id = "vpc-48e5fa20"

  ingress {
    from_port = "${var.server_port}"
    to_port = "${var.server_port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
