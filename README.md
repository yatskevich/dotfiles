# Environment configuration notes

## Tools on OS X

* [Command line tools for OS X](https://developer.apple.com/downloads/index.action)
* [Homebrew](http://mxcl.github.com/homebrew/)

    ```sh
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
    ```
* [QLStephen](http://whomwah.github.com/qlstephen/) QuickLook plugin
* tree

    ```sh
    brew install tree
    ```
* coreutils

    ```sh
    brew install coreutils
    ```
* rbenv

    ```sh
    brew install rbenv ruby-build
    ```
* apple-gcc42

   ```sh
   brew update
   brew tap homebrew/dupes
   brew install autoconf automake apple-gcc42
   rvm pkg install openssl
   ```

* ssh-copy-id

   ```sh
   brew install ssh-copy-id
   ```
   
* nmap - Security Scanner   

    ```sh
    brew install nmap
    ```
    
## Command line tips

* `!$` - last argument of previously executed command
* `!!` - previously executed command with all parameters

## [OS X tips](https://github.com/yatskevich/dotfiles/wiki/OS-X)
