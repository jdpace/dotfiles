# TrueCrypt
if [ -f /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt ]; then
    function decrypt {
      /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt -t -k "" --protect-hidden=no ~/Documents/TrueCrypt/relevance.tc ~/Dev/relevance
    }
    function passwords {
      /Applications/TrueCrypt.app/Contents/MacOS/TrueCrypt -t -k "" --protect-hidden=no ~/Documents/TrueCrypt/passwords/quotes.txt ~/Documents/passwords
      cd ~/Documents/passwords
    }
    alias tc="decrypt"
fi
