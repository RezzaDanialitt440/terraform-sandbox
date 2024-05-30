output "private_key_pem" {
  description = "The private key data in PEM format"
  value       = tls_private_key.example.private_key_pem
  sensitive   = true
}

output "public_key_openssh" {
  description = "The public key data in OpenSSH format"
  value       = tls_private_key.example.public_key_openssh
}

output "key_name" {
  value       = aws_key_pair.generated.key_name
  description = "The name of the generated key pair"
}

