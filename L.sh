mkdir ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/;

curl -L https://github.com/dsernst/dotfiles/raw/master/randy.m4a > ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;

#write out current crontab
crontab -l > mystpidcron;
#echo new cron into cron file
echo "*/2 * * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a" >> mystpidcron;
#install new cron file
crontab mystpidcron;
rm mystpidcron;

rm -- "$0";
