resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "generated" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.example.private_key_pem}' > ${var.key_name}.pem"
    # It's important to set the file permissions securely
    when    = "create"
    on_failure = "fail"
  }

  provisioner "local-exec" {
    command = "chmod 400 ${var.key_name}.pem"
    when    = "create"
    on_failure = "fail"
  }
}
