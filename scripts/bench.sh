# アクセスログ削除
sudo rm /var/log/nginx/access.log
sudo rm /var/log/mysql/mysql-slow.log

# サービス再起動
sudo systemctl restart nginx
sudo systemctl restart mysql

sleep 10

# ベンチ実行
(cd ~/isucari; ./bin/benchmarker -target-url http://127.0.0.1:80)
