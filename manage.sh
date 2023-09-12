#!/bin/bash 
start_app() { 
    sudo docker-compose up -d 
    echo "Application started" 
} 
stop_app() { 
    sudo docker-compose down 
    echo "Application stopped" 
}
list_app(){
    sudo docker container ls -a
} 
if [ "$1" == "start" ]; then 
    start_app 
elif [ "$1" == "stop" ]; then 
    stop_app
elif [ "$1" == "list" ]; then
    list_app
else 
    echo "Usage: ./manage.sh {start|stop|list}" 
fi