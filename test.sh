cat > /config/scripts/pinger.sh <<'EOF'
#!/bin/bash
echo "Ping Pong!!" >> /tmp/result.txt
EOF

chmod +x /config/scripts/pinger.sh

configure
set system task-scheduler task pinger executable path /config/scripts/pinger.sh
set system task-scheduler task pinger interval 1m
commit ; save ; exit

watch cat /tmp/result.txt