output "ip" {
  description = "The public IP address of the virtual machine"
  value = aws_instance.vm_instance.public_ip
}


