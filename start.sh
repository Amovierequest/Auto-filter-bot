if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Amovierequest.git /Auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-bot
fi
cd /Auto-Filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
