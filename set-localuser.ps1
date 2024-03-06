# set-localuser -name <user-name> -description <description> - change local user description to "description"
# set-localuser -name <user-name>-fullname <fullname> change local user full name to "fullname"
# set-localuser -name <user-name> -accountexpires <date> - change local user account expiry time to <date>
# set-localuser -name <user-name>-password <password> - change local user password

set-localuser -name myuser -description "description"
set-localuser -name myuser -fullname "fullname"

$date = get-date -day 20 -month 2 -year 2022
set-localuser -name myuser -accountexpires $date

$password = read-host -assecurestring
set-localuser -name myuser -password $password


