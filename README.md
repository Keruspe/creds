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
- `xsltproc` (required to build from a git clone)
- `docbook-xsl` (required to build from a git clone)

Steps to install it after cloning (skip the `./autogen.sh` part if you're building it from a tarball):

    ./autogen.sh
    ./configure
    make
    sudo make install

You can see everything I'll post about reds [there](http://www.imagination-land.org/tags/creds.html).

Latest release is: [creds 2](http://www.imagination-land.org/posts/2016-02-08-creds-2-released.html).

Direct link to download: <http://www.imagination-land.org/files/creds/creds-2.tar.xz>

Troubleshooting
---------------

- `creds` fails with the error

        gpg: 853120A2: There is no assurance this key belongs to the named user
        gpg: [stdin]: encryption failed: unusable public key
    Your key isn't signed. You can either sign it or set the environment variable `CREDS_GPG_ARGS` to `--trust-model always`
