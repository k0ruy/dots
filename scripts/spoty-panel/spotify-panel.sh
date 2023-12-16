#!/usr/bin/env bash

readonly DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
declare -A SPOTIFY_METADATA

# settings
readonly ICON="${DIR}/icons/spotify.png"
readonly ICON_OFFLINE="${DIR}/icons/spotify_offline.png"

encode () {
	echo $@ | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'
}

# Use the command-line Spotify controller to get song info over dbus
function fetch_spotify_metadata {
	while read -r line; do
		key="${line%%=*}"
		value="${line#*=}"
		value="${value%\"}"
		value="${value#\"}"
		SPOTIFY_METADATA["$key"]="$value"
	done < <( ${DIR}/sp.sh eval )
}

if pidof spotify &> /dev/null; then
	# call this function to populate SPOTIFY_METADATA
	fetch_spotify_metadata

	SPOTIFY_TITLE=${SPOTIFY_METADATA["SPOTIFY_TITLE"]}
	SPOTIFY_ARTIST=${SPOTIFY_METADATA["SPOTIFY_ARTIST"]}
	SPOTIFY_ALBUM=${SPOTIFY_METADATA["SPOTIFY_ALBUM"]}
	
	# echo "DEBUG: After sp.sh eval, SPOTIFY_TITLE = $SPOTIFY_TITLE" >> ~/debug.log # Debug statement

	# grab window id 
	WINDOW_ID=$(wmctrl -l | grep "${SPOTIFY_ARTIST} - ${SPOTIFY_TITLE}" | awk '{print $1}')
    
	# trim the title
	MAX_LENGTH=20
	DISPLAY_TITLE=$(python3 -c "import sys; title=sys.argv[1]; print(title[:$MAX_LENGTH] + '...' if len(title) > $MAX_LENGTH else title)" "$SPOTIFY_TITLE")


	# echo "DEBUG: After Python truncation, DISPLAY_TITLE = $DISPLAY_TITLE" >> ~/debug.log # Debug statement


	echo "<img>${ICON}</img>"
	echo "<txt> $(encode ${SPOTIFY_ARTIST}) - $(encode ${DISPLAY_TITLE})</txt>"
	echo "<txtclick>xdotool windowactivate ${WINDOW_ID}</txtclick>"
	echo "<tool>Title:      $(encode ${SPOTIFY_TITLE})"
	echo "Artist:     $(encode ${SPOTIFY_ARTIST})"
	echo "Album:   $(encode ${SPOTIFY_ALBUM})</tool>"
else 
	echo "<img>${ICON_OFFLINE}</img>"
	echo "<tool>Spotify is not running</tool>"
	echo "<click>spotify</click>"
fi
