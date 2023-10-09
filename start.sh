if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RJMALLU/THEROCK2.git /THEROCK2 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THEROCK2 
fi
cd /THEROCK2 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
