# download song
mkdir -p ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/;
curl -L https://raw.githubusercontent.com/dsernst/dotfiles/master/randy.m4a > ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;

# write out current crontab to temp file
crontab -l > mystpidcron;

# add our new jobs to cron file
echo "45 10 * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;" >> mystpidcron;
echo "45 19 * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;" >> mystpidcron;

# install new cron file
crontab mystpidcron;

# remove temp cron file
rm mystpidcron;

# remove this script
rm -- "$0";
