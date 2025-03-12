tail -f /var/log/messages | grep -q 'Connection.close()'
systemctl restart dcashub
