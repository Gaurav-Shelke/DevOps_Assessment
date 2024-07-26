
check_status() {
    local url="$1"
    local response_code=$(curl -sL -w "%{http_code}" "$url" -o /dev/null)

    if [ "$response_code" = "200" ]; then
        echo "[$(date)] Application is UP. Status code: $response_code"
    else
        echo "[$(date)] Application is DOWN or not responding correctly. Status code: $response_code"
    fi
}


show_uptime() {
    echo "System Uptime:"
    uptime
}


echo "Starting application status check..."
show_uptime


check_status "http://www.google.com"

echo "Finished application status check."
