# write out current crontab to temp file
crontab -l > tmpcron;

# add our new jobs to cron file
echo "30 */5 * * * say -v Vicki Guy uh loves you" >> tmpcron;

# install new cron file
crontab tmpcron;

# remove temp cron file
rm tmpcron;

# remove this script
rm -- "$0";
