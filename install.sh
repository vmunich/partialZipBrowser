#!/bin/sh
brew install automake autoconf libtool pkg-config curl libplist
sudo rm -rf libcrippy libfragmentzip libpartialzip
git clone https://github.com/tihmstar/libcrippy && cd ./libcrippy 
gprefix=`which glibtoolize 2>&1 >/dev/null`
aclocal -I m4
autoheader
automake --add-missing
autoconf
sudo ./configure CC="gcc -arch i386 -arch x86_64 -arch ppc -arch ppc64" \ CXX="g++ -arch i386 -arch x86_64 -arch ppc -arch ppc64" \ CPP="gcc -E" CXXCPP="g++ -E"
sudo bash autogen.sh && sudo make install && cd ..
git clone https://github.com/tihmstar/libfragmentzip && cd ./libfragmentzip && sudo bash autogen.sh && sudo make install && cd ..
git clone https://github.com/tihmstar/libpartialzip && cd ./libpartialzip && sudo bash autogen.sh && sudo make install && cd ..
echo "" && echo "\033[33mAbout to compile the project, if xcode prompts you to install any command line tools, let it install them.\033[0m" && echo ""
echo "" && echo "\033[33mPress enter to continue\033[0m" && read 
xcodebuild
echo "" && echo "\033[33mWait for xcode to install any dependencies (if prompt), then press enter to continue\033[0m" && read
cd build/Release
./pzb