NSLASH="$(echo "$1" | perl -pe 's|.*://[^/]+(.*?)/?$|\1|' | grep -o / | wc -l)"
NCUT=$((NSLASH > 0 ? NSLASH-1 : 0))
wget -e robots=off --no-check-certificate -r -c -nH --user-agent=Mozilla/5.0 --cut-dirs=$NCUT --no-parent --reject="index.html*" "$1"

# "./dl-directories.sh http://downloads.moviefree.faith/blessed/" will save files in a folder called blessed
# shoutout to some guy on stackexchange
