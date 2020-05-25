# Mekwars Backup - backup script for the MekWars game server (1.0)
Creates a hot backup of your Mekwars installation.

Official support sites: [Official Github Repo](https://github.com/fstltna/MegamekBackup) - [Official Forum](https://mymegamek.mekcity.com/index.php/forum/our-server-tools)


---

1. Edit the settings at the top of mekwarsbackup.pl if needed
2. create a cron job like this:

        1 1 * * * /root/MekwarsBackup/mekwarsbackup.pl

3. This will back up your Mekwars installation at 1:01am each day, and keep the last 5 backups.

If you need more help visit https://MekCity.com
