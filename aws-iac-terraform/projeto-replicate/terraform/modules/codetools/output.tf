output "code_commit_url" {
  value = aws_codecommit_repository.vpc_code.clone_url_http
}