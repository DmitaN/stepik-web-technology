sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd ~/web/ask
sudo gunicorn -b 0.0.0.0:8000 -c  ask.wsgi:application 
