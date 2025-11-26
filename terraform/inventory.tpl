[web]
%{ for idx, ip in web_ips ~}
web${idx + 1} ansible_host=${ip} ansible_user=${ssh_user} ansible_ssh_private_key_file=${ssh_private_key}
%{ endfor ~}

[all:vars]
ansible_python_interpreter=/usr/bin/python3
