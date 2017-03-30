This fork automatically installs dependencies and compiles partialZipBrowser

First, make sure you have [Homebrew](http://brew.sh) installed:

```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

Then, run the installation script:

```sh install.sh```


partialZipBrowser is a commandline tool for browsing and downloading files from zip files on remote webserver.


```
Usage: ./pzb [parameter] <url to zip>
Browse and download files and directories from remote zip
Specifying no parameter starts an interactive console

Usage: parameter <required argument> [optional argument]
Following parameter are avaliable: 
  -l                         	shows contents and subdirectories of zip
      --list=[path]          	shows contents and subdirectories of [path] in zip
      --nosubdirs            	don't show subdirectories. Does nothing without -l or --list
  -c, --create-directories   	download files with it' directories and subdirectories
  -h, --help                 	shows this help
  -g, --get       <path>     	downloads remote file
  -d, --directory            	download remote directory recursively instead of sindle file
                             	use this with -g (--get)
```
