sudo cp -r ~/git/mysql /etc/
sudo cp -r ~/git/nginx /etc/
sudo cp -r ~/git/webapp/go /home/isucon/isucari/webapp/
sudo cp -r ~/git/webapp/sql /home/isucon/isucari/webapp/

sudo systemctl stop isucari.golang
cd /home/isucon/isucari/webapp/go; rm /home/isucon/isucari/webapp/go/isucari; make;
sudo systemctl restart isucari.golang

