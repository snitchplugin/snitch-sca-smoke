# Intentionally vulnerable Terraform for IaC smoke test.

resource "aws_s3_bucket" "public_assets" {
  bucket = "test-public-bucket"
  acl    = "public-read"
}

resource "aws_db_instance" "user_db" {
  identifier        = "user-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  storage_encrypted = false
}

resource "aws_security_group" "wide_open_ssh" {
  name = "wide-open"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_iam_policy" "god_mode" {
  name = "god-mode"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    { "Effect": "Allow", "Action": "*", "Resource": "*" }
  ]
}
POLICY
}

# Hardcoded AWS key in source — should be flagged
locals {
  aws_access_key_id     = "AKIAIOSFODNN7EXAMPLE"
  aws_secret_access_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}
