# get-localuser <user-name> - get object of local user with name "user-name"
# get-localuser -name <user-name> - get object of local user with name "user-name"
# get-localuser -sid <user-sid> - get object of local user with sid "user-sid"

get-localuser "myuser"
get-localuser -name "myuser"
get-localuser -sid "myuser-sid"