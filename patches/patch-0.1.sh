# Change the directory to ~/smartnode
cd ~/.smartcash

# Download the new crontjob
wget https://raw.githubusercontent.com/SmartCash/smartnode/master/clearlog.sh 

# Create a cronjob for clearing the log file
if ! crontab -l | grep "~/.smartcash/clearlog.sh"; then
  (crontab -l ; echo "0 0 */2 * * ~/.smarcash/clearlog.sh") | crontab -
fi

# Give execute permission to the cron script
chmod 0700 ./clearlog.sh

./clearlog.sh
