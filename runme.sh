#!/bin/bash
clear

# تنسيق الشعار
echo "
(  ___  )                                    (  ____ \
| (   ) | _                             _    | (    \/                          _ 
| (___) || |                           | |   | (_____                          | |    /\     
|  ___  || |____  _________ _____    __| |   (_____  )  __ _  _   _ _____    __| |   /  \   _ __  _ __ 
| (   ) || |__  ||  _   _  || | _ \ / _  |         ) | / _` || | | || | _ \ / _  |  / /\ \ | '_ \| '_ \   
| )   ( || |  | || | | | | || ||_) ||(_| |   /\____) |  (_| |\ |_| || ||_) ||(_| | / ____ \| |_) | |_) |
|/     \||_|  |_||_| |_| |_|| |___/ \____|   \_______) \__,_| \__, || |___/ \____|/_/    \_\ .__/| .__/ 
                            \ \__                              __/ |\ \__                  | |   | |  
                            '\___|                            |___/ '\___|                 |_|   |_| 
"
sleep 3s

# تثبيت التطبيقات
echo "#######################################################"
echo "###         Preparing for Installation              ###"
echo "#######################################################"
echo ""
sleep 3s

# التحقق من توفر Docker و Docker Compose
if ! command -v docker &>/dev/null; then
    echo "Error: Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker-compose &>/dev/null; then
    echo "Error: Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# تشغيل التطبيق باستخدام Docker Compose
echo "Starting the Ahmed Sayed App..."
docker-compose up -d
sleep 5s  # فاصل زمني للتأكد من استكمال عملية البدء

echo "The Ahmed Sayed App has been started successfully."
