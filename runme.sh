#!/bin/bash
clear

cat << "EOF"
(  ___  )                                    (  ____ \
| (   ) | _                             _    | (    \/                          _ 
| (___) || |                           | |   | (_____                          | |    /\     
|  ___  || |____  _________ _____    __| |   (_____  )  __ _  _   _ _____    __| |   /  \   _ __  _ __ 
| (   ) || |__  ||  _   _  || | _ \ / _  |         ) | / _` || | | || | _ \ / _  |  / /\ \ | '_ \| '_ \   
| )   ( || |  | || | | | | || ||_) ||(_| |   /\____) |  (_| |\ |_| || ||_) ||(_| | / ____ \| |_) | |_) |
|/     \||_|  |_||_| |_| |_|| |___/ \____|   \_______) \__,_| \__, || |___/ \____|/_/    \_\ .__/| .__/ 
                            \ \__                              __/ |\ \__                  | |   | |  
                            '\___|                            |___/ '\___|                 |_|   |_| 
EOF
    sleep 6s
installApps() {

# تثبيت التطبيقات
echo "#######################################################"
echo "###         Preparing for Installation              ###"
echo "#######################################################"
echo ""
sleep 3s


# تشغيل التطبيق باستخدام Docker Compose
echo "Starting the Ahmed Sayed App..."
docker-compose up -d
sleep 5s  # فاصل زمني للتأكد من استكمال عملية البدء

echo "The Ahmed Sayed App has been started successfully."
echo "    Navigate to your server hostname / IP address on port 8123 "
}
installApps
