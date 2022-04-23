

echo "Downloading whitelists resources..."

#Entries for whitelists
sudo wget -q --output-document=/etc/hblock/anudeep.txt https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt 

sudo wget -q --output-document=/etc/hblock/coinblocker.txt https://zerodot1.gitlab.io/CoinBlockerLists/white_list.txt 

echo "..Done"

echo "Removing old allowlist and creating a new one..."

sudo rm -f /etc/hblock/allow.list 

sudo touch /etc/hblock/allow.list 

sudo cat /etc/hblock/anudeep.txt | sudo tee -a /etc/hblock/allow.list >/dev/null

sudo cat /etc/hblock/coinblocker.txt | sudo tee -a /etc/hblock/allow.list >/dev/null

echo "...Done"

echo "Finishing setting up..."

#Other custom entries 
sudo echo "www.reddit.com" | sudo tee -a /etc/hblock/allow.list >/dev/null

sudo echo "gitlab.com" | sudo tee -a /etc/hblock/allow.list >/dev/null

echo "Updating hosts file"

hblock -S /etc/hblock/sources.list 


