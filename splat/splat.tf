resource "aws_iam_user" "lb" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "combined" {
    value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}