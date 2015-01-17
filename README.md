# Environment configuration notes

## Tools on OS X

* [Command line tools for OS X](https://developer.apple.com/downloads/index.action)
* [Homebrew](http://mxcl.github.com/homebrew/)

    ```sh
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
    ```
* [QLStephen](http://whomwah.github.com/qlstephen/) QuickLook plugin

* brew packages

    ```sh
    brew install zsh
    brew install tree wget
    brew install coreutils
    brew install rbenv ruby-build # rbenv
    brew install ssh-copy-id
    brew install nmap # Security Scanner 
    brew install node
       
    # Cask http://caskroom.io/
    brew install caskroom/cask/brew-cask
    
    # Docker
    brew cask install boot2docker
    ```

* apple-gcc42

   ```sh
   brew update
   brew tap homebrew/dupes
   brew install autoconf automake apple-gcc42
   rvm pkg install openssl
   ```
    
## Command line tips

* `!$` - last argument of previously executed command
* `!!` - previously executed command with all parameters

## [OS X tips](https://github.com/yatskevich/dotfiles/wiki/OS-X)
