
# Get information from Spotify via AppleScript and store it in shell variables:
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
		set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        return theArtist & "|" & theName
    end tell')"

# Output combined result:
echo "$theArtist - $theName"
