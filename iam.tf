data "aws_iam_policy_document" "assume_ec2" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "ec2_role" {
  name               = "${var.project}-ec2-role"
  assume_role_policy = data.aws_iam_policy_document.assume_ec2.json

  force_detach_policies = true   
  lifecycle {
    prevent_destroy = true       
  }
}
