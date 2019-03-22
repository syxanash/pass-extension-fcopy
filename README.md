# pass fcopy

An extension for the CLI password manager [pass](https://www.passwordstore.org/) to copy in the clipboard the first password in database that matches a given string as parameter.

## Description

`pass` utility allowes to store all passwords in `~/.password-store`. If you end up organizing your passwords in subdirectories you'll have to specify the whole path where the password resides in order to access it. For instance:

`pass -c web/social/facebook.com`

To avoid this hassle using this extension you can simply write:

`pass fcopy facebook`

The script will get the first match for the file named *facebook* and copy the password into the clipbaord (`pass -c` command will copy the password in the clipboard for 45 seconds).

## Usage

`pass fcopy amazon`

## Examples

```
$ pass fcopy facebook
Searching for password facebook...
Copied /web/social/facebook.com to clipboard. Will clear in 45 seconds.
```

## Installation

* Enable the extensions support for `pass` by changing the following environment variable: `PASSWORD_STORE_ENABLE_EXTENSIONS=true`
* Create a directory `.extensions` in your `$PASSWORD_STORE_DIR`. By default it should be `~/.password-store/.extensions`
* Copy the file `fcopy.bash` into `.extensions/`

## Contribution

Feedback, contributors, pull requests are all very welcome.
