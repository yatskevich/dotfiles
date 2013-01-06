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
* [Ruby Version Manager](https://rvm.io/rvm/install/)

    ```sh
    curl -L https://get.rvm.io | bash -s stable --ruby
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

## OS X tips

* change hostname

    ```sh
    sudo scutil --set HostName yatskevich.local
    ```
* set file visibility bit

    ```sh
    SetFile -a v <filename>
    ```
* NTFS read/write (inspired by [this post](http://crosstown.coolestguyplanettech.com/os-x/44-how-to-write-to-a-ntfs-drive-from-os-x))

    ```sh
    brew install fuse4x
    brew install ntfs-3g
    ```
and follow the instructions provided by both.
