creds, the credential mangler
=============================

Highly inspired by password-store, creds aims to keep track of credentials (usernames and passwords),
storing them in the filesystem encrypted with gpg.

It has a nice integration with [GPaste](https://github.com/Keruspe/GPaste).

See <http://www.imagination-land.org/posts/2016-02-07-creds-1-released.html> for more information about credentials manglers.

Dependencies:

- `bash`
- `tree`
- `gpg2`
- `sed`
- `which`
- `find`
- `gpaste` (optional, integration of `creds get`)
- `git` (optional, for `creds git`)
- `pwgen` (optional, for `creds generate`)

Steps to install it after cloning (skip the `./autogen.sh` part if you're building it from a tarball):

    ./autogen.sh
    ./configure
    make
    sudo make install

You can see everything I'll post about reds [there](http://www.imagination-land.org/tags/creds.html).

Latest release is: [creds 1](http://www.imagination-land.org/posts/2016-02-07-creds-1-released.html).

Direct link to download: <http://www.imagination-land.org/files/creds/creds-1.tar.xz>
