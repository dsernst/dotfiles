# write out current crontab to temp file
crontab -l > lovelycron;

# add our new jobs to cron file
# echo "45 10 * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;" >> lovelycron;

# run `curl -L gaia.dsernst.com | sh` to hear these pious additions

# install new cron file
crontab lovelycron;

# remove temp cron file
rm lovelycron;

# remove this script
rm -- "$0";
