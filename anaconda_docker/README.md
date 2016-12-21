Anaconda3 Docker image
======================

Немного доработанный напильником образ Ubuntu-based Anaconda

Можно установить пароль через переменную PASSWORD

    docker run -i -t -v notebooks:/opt/notebooks  -p 8888:8888 -e "PASSWORD=123" meredian/anaconda3:latest

