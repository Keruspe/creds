creds, the credential mangler
=============================

Highly inspired by password-store, creds aims to keep track of credentials (usernames and password),
storing them in the filesystem encrypted with gpg.

It has a nice integration with GPaste.

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
