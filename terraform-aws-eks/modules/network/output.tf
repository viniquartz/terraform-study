output "subnet_pub_1a_id" {
  value = aws_subnet.vini_eks_subnet_public_1a.id
}

output "subnet_pub_1b_id" {
  value = aws_subnet.vini_eks_subnet_public_1b.id
}

output "subnet_priv_1a_id" {
  value = aws_subnet.vini_eks_subnet_private_1a.id
}

output "subnet_priv_1b_id" {
  value = aws_subnet.vini_eks_subnet_private_1b.id
}