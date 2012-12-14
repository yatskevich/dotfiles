Environment configuration notes
===============================

Tools on OS X
------------- 
* [Command line tools for OS X](https://developer.apple.com/downloads/index.action)
* [Homebrew](http://mxcl.github.com/homebrew/)

    ```sh
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
    ```
* [QLStephen](http://whomwah.github.com/qlstephen/) QuickLook plugin


Command line tips
-----------------

* `!$` - last argument of previously executed command
* `!!` - previously executed command with all parameters

OS X tips
---------

* change hostname

    ```sh
    sudo scutil --set HostName yatskevich.local
    ```
* set file visibility bit

    ```sh
    SetFile -a v <filename>
    ```
