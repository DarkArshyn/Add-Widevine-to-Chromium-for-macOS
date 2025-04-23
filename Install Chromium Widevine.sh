#!/bin/sh
[ ! -f /tmp/googlechrome.dmg ] && curl -L https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg -o /tmp/googlechrome.dmg
hdiutil attach /tmp/googlechrome.dmg -nobrowse
sudo cp -R /Volumes/Google\ Chrome/Google\ Chrome.app/Contents/Frameworks/Google\ Chrome\ Framework.framework/Libraries/WidevineCdm /Applications/Chromium.app/Contents/Frameworks/Chromium\ Framework.framework/Libraries/WidevineCdm
hdiutil detach /Volumes/Google\ Chrome
