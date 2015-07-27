alias log='terminator -m -l Logs -p Logs & >/dev/null'
alias cardup='drush @card.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc && drush @card.docker updb -y'
alias cardupall='drush @card.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc && drush @card.docker updb -y && drush @card.docker cc all && curl card.docker'
alias cardlup='drush @card.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc'
alias cardlikeup='drush @cardlike.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/cardlike.prod_backup_post_sanitize_latest.sql.bz2 | drush @cardlike.db sqlc && drush @cardlike.docker updb -y'
alias cardlikelup='drush @cardlike.db sql-drop -y && bzcat ~/Dropbox\ \(CARD.COM\)/card_db_backups/cardlike.prod_backup_post_sanitize_latest.sql.bz2 | drush @cardlike.db sqlc'
alias carddb='drush @card.db sqlc'
alias cardlikedb='drush @cardlike.db sqlc'
alias dcard='cd /home/david/Sites/dev-docker-2/docker/sites/card'
alias dlike='cd /home/david/Sites/dev-docker-2/docker/sites/cardlike'
alias selenium='java -jar selenium-server-standalone-2.42.2.jar &'
alias cardtest="ssh -t card 'cd /var/www/card/sites/all/tests && bin/behat --format progress --tags ~@javascript'"
alias cardtestfull="cardup && drush @card.docker cc all && curl card.docker && ssh -t card 'cd /var/www/card && ./sites/all/tests/bin/behat --config sites/all/tests/behat.yml --format progress --tags ~@javascript'"
alias cardliketest="ssh -t cardlike 'cd /var/www/cardlike/sites/all/tests && bin/behat --format progress --tags ~@javascript'"
alias cardliketestfull="cardlikeup && drush @cardlike.docker cc all && ssh -t cardlike 'cd /var/www/cardlike/sites/all/tests && bin/behat --format progress --tags ~@javascript'"
alias sincelastdeploy="git log origin/master..origin/chp-working  | grep 'pull request' && git log origin/master..origin/chp-working  | grep 1337"
alias notes="vim ~/Dropbox/notes/scrum.txt"
alias dclick="synclient MaxTapTime=0"
alias tempcardup='drush @card.db sql-drop -y && bzcat ~/Desktop/card.prod_backup_post_sanitize_latest.sql.bz2 | drush @card.db sqlc && drush @card.docker updb -y'
alias cardlogin='drush @card.docker uli 19'

# OpenVpn
alias cardvpn='sudo openvpn --config /etc/openvpn/client.conf up'
