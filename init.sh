sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 -c ~/web/hello.py hello:app 
sudo gunicorn -b 0.0.0.0:8000 -c ~/web/ask ask.wsgi:application 
