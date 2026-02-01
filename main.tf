terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

}

provider "aws" {

  region = "eu-north-1"

}

resource "aws_iam_user" "iam_user" {

  name = var.iam_user_name

}

resource "aws_iam_policy" "s3_read_policy" {

  name   = "project4-s3-read-policy"

  policy = var.s3_read_policy

}

resource "aws_iam_user_policy_attachment" "attach_policy" {

  user       = aws_iam_user.iam_user.name

  policy_arn = aws_iam_policy.s3_read_policy.arn

}
