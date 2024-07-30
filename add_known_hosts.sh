# Add all ansible inventory hosts to the known hosts file  ~/.ssh/known_hosts using ssh-keyscan
for host in $(cat /etc/ansible/hosts | grep -v "\[" | grep -v "^$"); do
    ssh-keyscan -H $host >> ~/.ssh/known_hosts
done