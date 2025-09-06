resource "aws_instance" "suda" {
    ami = "ami-01102c5e8ab69fb75"
    instance_type = "t2.medium"
    tags = {
        Name = "yadav"
    }
  
}
resource "aws_s3_bucket" "name" {
    bucket = "aws"
  
}
resource "aws_iam_user" "admin_user" {
  name = "suda"
}

resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

