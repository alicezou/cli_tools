while true
do
    ping -c 3 www.google.com
    if [ $? -eq 0 ]
    then
        osascript -e 'display notification "Network Restored!" with title "Network" sound name "Submarine"'
        break
    else
        sleep 30
    fi
done