echo ==== Starting .... ====
rake db:migrate RAILS_ENV=production
kill -9 `cat /www/scenery/tmp/pids/puma.pid`
bundle exec puma -e development -d -b unix:///www/scenery/tmp/sockets/puma.sock
echo ==== Done ====
