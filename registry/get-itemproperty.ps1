# get-itemproperty <registry-path> - getting all elemets in "registry-path"
# get-itemproperty <registry-path> -name <element-name> getting element "element-name" in "registry-path"

get-itemproperty Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion

$item = get-itemproperty Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion -name programfilesdir