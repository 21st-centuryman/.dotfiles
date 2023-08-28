# A script that will start steam on my macbook using the apple game dev toolkit.
# A proton-like layer that will run windows applications on macOS.

# -------------------------------
# BEFORE YOU Run
# install game porting tool kit from apples developer website. it will be required later
# -------------------------------

# Installing rosetta (uncomment this if you need to set it up)
#softwareupdate --install-rosetta

# zsh on x86
#arch -x86_64 zsh

# Installing x86 homebrew. Yes we need this.
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setting up the paths for homebrew
eval "$(/usr/local/bin/brew shellenv)"

# Installing game-porting-toolkit
brew -v install apple/apple/game-porting-toolkit

# A wine prefix for a virtual C drive
WINEPREFIX=~/my-game-prefix $(brew --prefix game-porting-toolkit)/bin/wine64 winecfg

# Wine prefixes that I need for some reason
WINEPREFIX=~/my-game-prefix $(brew --prefix game-porting-toolkit)/bin/wine64 reg add 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentBuild /t REG_SZ /d 19042 /f
WINEPREFIX=~/my-game-prefix $(brew --prefix game-porting-toolkit)/bin/wine64 reg add 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentBuildNumber /t REG_SZ /d 19042 /f
WINEPREFIX=~/my-game-prefix $(brew --prefix game-porting-toolkit)/bin/wineserver -k

# Make game-porting-toolkit a proper path
export PATH=/Volumes/Game\ Porting\ Toolkit-1.0/:$PATH

# Installing steam (uncomment this if you need to set it up)
# gameportingtoolkit ~/my-game-prefix ~/Downloads/SteamSetup.exe

# Running steam :)
gameportingtoolkit ~/my-game-prefix 'C:\Program Files (x86)/Steam/steam.exe'
