$old_user_name = read-host "Old user name"
$new_user_name = read-host "New user name"

$sid = (get-localuser $old_user_name | select-object sid).sid.value

$registry_path = "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\$sid"

$old_home_dir_path = (get-itemproperty $registry_path -name ProfileImagePath).ProfileImagePath
$new_home_dir_path = "C:\Users\$new_user_name"

rename-item -path $old_home_dir_path -newname $new_home_dir_path -erroraction stop
write-host "rename home dir: $old_home_dir_path --> $new_home_dir_path"

rename-localuser -name $old_user_name -newname $new_user_name -erroraction stop
write-host "rename user: $old_user_name --> $new_user_name"

set-itemproperty $registry_path -name ProfileImagePath -value $new_home_dir_path
write-host "replace profile image path in registry: $old_home_dir_path --> $new_home_dir_path"
