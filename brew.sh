#!/usr/bin/env bash
read -p "Time to get your Applications. This will take a while." -n1 -s
echo '\n'
# Get brew.
hash brew 2>/dev/null || { echo >&2 "You don't have brew, getting it now."; /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade
brew tap homebrew/science
brew tap caskroom/cask
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp

#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm

#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.

#brew install exiv2
#brew install git
#brew install git-lfs
#brew install imagemagick --with-webp
#brew install lua
#brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install rhino
#brew install speedtest_cli

#brew install testssl

#brew install vbindiff
#brew install webkit2png
#brew install zopfli
brew install antibody \
archey \
autoconf \
automake \
axel \
boost \
cairo \
cmake \
doxygen \
ffmpeg \
fftw \
fontconfig \
freetype \
fribidi \
gd \
gdbm \
gdk-pixbuf \
geoip \
gettext \
giflib \
giflossy \
git \
glib \
gmp \
gnutls \
go \
gobject-introspection \
graphicsmagick \
harfbuzz \
highlight \
hiredis \
httrack \
icu4c \
imagemagick \
intltool \
jasper \
jpeg \
json-c \
json-glib \
lame \
libass \
libcroco \
libdnet \
libexif \
libffi \
libgpg-error \
libgphoto2 \
libgsf \
libicns \
libksba \
libpng \
librsvg \
libtasn1 \
libtiff \
libtool \
libusb \
libusb-compat \
libyaml \
libzip \
little-cms2 \
lua \
luajit \
makedepend \
mobile-shell \
mysql \
net-snmp \
nettle \
ntopng \
openjpeg \
openssl \
orc \
pango \
pcre \
pixman \
pkg-config \
poppler \
postgresql \
protobuf \
py2cairo \
pyenv \
pyenv-virtualenv \
pygobject3 \
python \
python3 \
readline \
reaver \
redis \
rrdtool \
ruby \
sane-backends \
shared-mime-info \
speedtest_cli \
sphinx-doc \
sqlite \
texi2html \
thefuck \
tldr \
tree \
vips \
webp \
wget \
wine \
x264 \
xvid \
xz \
yarn \
yasm \
youtube-dl \
z \
zeromq \
ssh-copy-id \
tree \
git \
ack \
git-lfs \
fcrackzip \
nmap \
go \
ack \
dark-mode \


brew cask install --appdir="/Applications" \
alfred
cakebrew \
fing \
gitify \
google-drive \
osxfuse \
qlcolorcode \
qlmarkdown \
qlstephen \
quicklook-json \
xquartz \
intellij-idea \
sublime-text \
spotify \
spotify-notifications \
vlc \
iterm2 \
gitkraken \


# Remove outdated versions from the cellar.
brew cleanup
