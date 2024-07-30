# Add all ansible inventory hosts to the known hosts file  ~/.ssh/known_hosts using ssh-keyscan
for host in $(cat inventory/hosts | grep -v "\[" | grep -v "^$"); do
    ssh-copy-id k3smaster@$host
done