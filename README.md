# [Linux]-Simple-bash-script-for-online-whitelists-management-in-hblock

A noob bash script for downloading and adding online whitelists to hblock. For example Anudeep's whitelist. The script also updates the hblock.
The default whitelists are Anudeep's and CoinBlocker. Respectevely: https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt and https://zerodot1.gitlab.io/CoinBlockerLists/white_list.txt 

I assume the hosts list for the domains to be blocked are located in /etc/hblock/sources.list . Note that every entry must separated by a blank line. I have put an example of sorces.list file with the suggested entries from https://firebog.net/ .

# INSTALLATION
Simply download the script and don't forget to make it executable with sudo chmod +x <PATH_TO_Update_hosts.sh>.


# HOW TO USE 
You can execute the script manually, but my suggestion is to add it to crontab, to be executed automatically for example once a week.
You can add it with the command crontab -e and adding a line like: 0 11 * * 1 '<PATH_TO_Update_hosts.sh>' to be executed at 11 a.m. every week.
You can change the whitelists by changing the links after wget at the top of the script.
You can add also custom entries that are not online (I include reddit.com and gitlab.com)

# If you have any suggestions let me know!

Disclaimer: I assume no responsibility for what might went wrong. I'm not the author of any of the lists linked to this script and so not responsible for any security risk associated with those.
