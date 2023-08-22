if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/gangstar1010/SH-Auto-filter-bot.git /SH-Auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SH-Auto-filter-bot
fi
cd /SH-Auto-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
