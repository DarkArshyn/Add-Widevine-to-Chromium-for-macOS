#!/bin/sh
cd /tmp/
wget https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg
hdiutil attach ./googlechrome.dmg -nobrowse
cp -R /Volumes/Google\ Chrome/Google\ Chrome.app/Contents/Frameworks/Google\ Chrome\ Framework.framework/Libraries/WidevineCdm /Applications/Chromium.app/Contents/Frameworks/Chromium\ Framework.framework/Libraries/WidevineCdm
hdiutil detach /Volumes/Google\ Chrome