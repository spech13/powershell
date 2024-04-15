# net localgroup - all local groups list
# net localgroup <group-name> - local group named "group-name" users list
# net localgroup <group-name> /add - local group named "group-name" adding
# net localgroup <group-name> /del - local group nomed "group-name" deleting
# net localgroup <group-name> <user-name> /add - local user to local group named "group-name" adding
# net localgroup <group-name> <user-name> /del - local user from local group named "group-name" deleting

net localgroup
net localgroup mygroup /add
net localgroup mygroup
net localgroup mygroup myuser /add
net localgroup mygroup myuser /del
net localgroup mygroup /del
