output "web_public_ips" {
  description = "Public IPs of the web instances"
  value       = aws_instance.web.*.public_ip
}

output "ansible_inventory_file" {
  description = "Path to generated Ansible inventory file"
  value       = local_file.ansible_inventory.filename
}

