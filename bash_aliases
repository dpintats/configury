# Card aliases
alias cardrefresh1='drush @card.db1 sql-drop -y && docker exec -ti cardcom_db_1 rm -rf /var/lib/mysql/card_docker/*.ibd && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db1 sqlc && drush @card.docker1 updb -y'
alias cardrefresh2='drush @card.db2 sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db2 sqlc && drush @card.docker2 updb -y'
alias cardup1='cd /home/david/docker/cardcom && ./restore.sh cardcom_db_1 && drush @card.docker updb -y'
alias cardup2='cd /home/david/docker/cardcom && ./restore.sh cardcom_db_2 && drush @card.docker2 updb -y'
alias cardupall='drush @card.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc && drush @card.docker updb -y && drush @card.docker cc all && curl card.docker'
alias cardlup='drush @card.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc'
alias cardlogin='drush @card.docker uli 19'
alias carddb1='drush @card.db sqlc'
alias carddb2='drush @card.db2 sqlc'
alias dcard1='cd /home/david/docker/cardcom/sites/web1/card'
alias dcard2='cd /home/david/docker/cardcom/sites/web2/card'
alias cardtest1="ssh -t drupal1 'cd /var/www/card && ./sites/all/tests/bin/behat -c sites/all/tests/behat.yml --format progress --tags ~@javascript'"
alias cardtest2="ssh -t drupal2 'cd /var/www/card && ./sites/all/tests/bin/behat -c sites/all/tests/behat.yml --format progress --tags ~@javascript'"

#Cardlike aliases
alias cardlikerefresh='drush @cardlike.db1 sql-drop -y && docker exec -ti cardlike_db_1 rm -rf /var/lib/mysql/cardlike_docker/*.ibd && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/cardlike.prod_backup_post_sanitize_latest.sql.bz2 | drush @cardlike.db1 sqlc && drush @cardlike.docker1 updb -y'
alias cardlikerefresh2='drush @cardlike.db2 sql-drop -y && docker exec -ti cardlike_db_2 rm -rf /var/lib/mysql/cardlike_docker/*.ibd && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/cardlike.prod_backup_post_sanitize_latest.sql.bz2 | drush @cardlike.db2 sqlc && drush @cardlike.docker2 updb -y'
alias cardlikeup1='cd /home/david/docker/cardcom && ./restore.sh cardlike_db_1 && drush @cardlike.docker1 updb -y'
alias cardlikeup2='cd /home/david/docker/cardcom && ./restore.sh cardlike_db_2 && drush @cardlike.docker2 updb -y'
alias cardlikelup='drush @cardlike.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/cardlike.prod_backup_post_sanitize_latest.sql.bz2 | drush @cardlike.db sqlc'
alias cardlikedb1='drush @cardlike.db1 sqlc'
alias cardlikedb2='drush @cardlike.db2 sqlc'
alias dlike1='cd /home/david/docker/cardcom/sites/web1/cardlike'
alias dlike2='cd /home/david/docker/cardcom/sites/web2/cardlike'
alias selenium='java -jar selenium-server-standalone-2.42.2.jar &'
alias cardtestfull="cardup && drush @card.docker cc all && curl card.docker && ssh -t card 'cd /var/www/card && ./sites/all/tests/bin/behat --config sites/all/tests/behat.yml --format progress --tags ~@javascript'"
alias cardliketest1="ssh -t drupal1 'cd /var/www/cardlike && ./sites/all/tests/bin/behat -c sites/all/tests/behat.yml --format progress --tags ~@javascript'"
alias cardliketest2="ssh -t drupal2 'cd /var/www/cardlike && ./sites/all/tests/bin/behat -c sites/all/tests/behat.yml --format progress --tags ~@javascript'"
alias cardliketestfull="cardlikeup && drush @cardlike.docker cc all && ssh -t cardlike 'cd /var/www/cardlike/sites/all/tests && bin/behat --format progress --tags ~@javascript'"
alias tempcardup='drush @card.db sql-drop -y && bzcat ~/Desktop/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc && drush @card.docker updb -y'

# Utilities
alias log='terminator -m -l Logs -p Logs & >/dev/null'
alias dclick="synclient MaxTapTime=0"
alias notes="vim ~/Dropbox/notes/scrum.txt"
alias sincelastdeploy="git log origin/master..origin/chp-working  | grep 'pull request' && git log origin/master..origin/chp-working  | grep 1337"

# OpenVpn
alias cardvpn='sudo openvpn --config /etc/openvpn/client.conf up'
