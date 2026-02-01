

variable "iam_user_name" {

  description = "Enter IAM user name (default: user)"

  type        = string

  nullable    = true

}


variable "s3_read_policy" {

  type = string

  default = <<EOF

{

  "Version": "2012-10-17",

  "Statement": [

    {

      "Effect": "Allow",

      "Action": [

        "s3:GetObject",

        "s3:ListBucket"

      ],

      "Resource": "*"

    }
  ]

}

EOF

}
