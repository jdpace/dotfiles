# TrueCrypt
if [ -f /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt ]; then
  export TRUECRYPT=/Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt
else
  export TRUECRYPT=$(which truecrypt)
fi

if [ ! -z "$TRUECRYPT" ]; then
  function decrypt {
    local volume=$1
    if [ -z "$volume" ] || [ ! -f "$volume" ]; then
      echo "Please specify a volume (e.g. decrypt /path/to/volume.truecrypt)"
      return
    fi

    local mount=$(basename "$volume" .truecrypt)
    mkdir -p "$HOME/$mount"
    echo "Mounting \"$volume\" to \"$HOME/$mount\""
    $TRUECRYPT -t -k "" --protect-hidden=no $volume $mount
  }
fi
