# check the current size
CHECK="du public | awk '{ print $1 }'"
# CHECK=${CHECK%G*}
echo "Current Foldersize: $CHECK bytes"

# if (( $(echo "$CHECK > $SIZE" |bc -l) )); then
#         echo "Folder is bigger than $SIZE GB"
# else
#         echo "Folder is smaller than $SIZE GB"
# fi
