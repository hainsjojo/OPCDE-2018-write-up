# flagsync
**Points- 200**

**Description**
> Develepors have a history of combining code and data.

**Write up**

So we are given a repo.. After going through the files and playing with `git` commands couldn't find anything.

In `COMMITEDIT_MSG` under `.git` we can see this
`Moved to using git -- mercurial was Peter's idea anyways.`

Mercurial?? Yes, we can see a `.hg` file meaning a mercurial repo was used.

Lets check the logs
```
# hg log
changeset:   4:29df3402992d
tag:         tip
user:        greta
date:        Tue Dec 01 15:51:24 2015 -0600
summary:     Peter thought it would be good to put the flag in the source code. Removed the flag and fired Peter.

changeset:   3:6c397689545b
user:        peter
date:        Tue Dec 01 15:43:27 2015 -0600
summary:     Moved connection details into source to remove the os module dependency.

changeset:   2:b5607d7a808c
user:        tara
date:        Tue Dec 01 15:36:57 2015 -0600
summary:     Flag and connection details read in from environment variables that are loaded from another script. Loader script not in repo for obvious reasons.

changeset:   1:fbe818823d07
user:        shawn
date:        Tue Dec 01 15:15:50 2015 -0600
summary:     Added README.md with basic info
:...skipping...
changeset:   4:29df3402992d
tag:         tip
user:        greta
date:        Tue Dec 01 15:51:24 2015 -0600
summary:     Peter thought it would be good to put the flag in the source code. Removed the flag and fired Peter.

changeset:   3:6c397689545b
user:        peter
date:        Tue Dec 01 15:43:27 2015 -0600
summary:     Moved connection details into source to remove the os module dependency.

changeset:   2:b5607d7a808c
user:        tara
date:        Tue Dec 01 15:36:57 2015 -0600
summary:     Flag and connection details read in from environment variables that are loaded from another script. Loader script not in repo for obvious reasons.

changeset:   1:fbe818823d07
user:        shawn
date:        Tue Dec 01 15:15:50 2015 -0600
summary:     Added README.md with basic info

changeset:   0:6e26ce2373ad
user:        rosa
date:        Tue Dec 01 15:07:23 2015 -0600
summary:     Initial commit to start repository
```
Nothing interesting.. Lets try using directory prefix for files in archive `-p`

```
root@c0dbat:~/Downloads/CTF/OPCDE/flagsync# hg log -p
changeset:   4:29df3402992d
tag:         tip
user:        greta
date:        Tue Dec 01 15:51:24 2015 -0600
summary:     Peter thought it would be good to put the flag in the source code. Removed the flag and fired Peter.

diff -r 6c397689545b -r 29df3402992d README.md
--- a/README.md Tue Dec 01 15:43:27 2015 -0600
+++ b/README.md Tue Dec 01 15:51:24 2015 -0600
@@ -1,3 +1,7 @@
 # FlagSync
 
 The `flagsync.py` script connects to a remote system and sends the secret flag over.  This ensures that the only people who have the flag are the ones who are supposed to have the flag.
+
+# Reference
+
+![Peter](https://i.imgur.com/KQoDgoz.jpg)
diff -r 6c397689545b -r 29df3402992d flagsync.py
--- a/flagsync.py       Tue Dec 01 15:43:27 2015 -0600
+++ b/flagsync.py       Tue Dec 01 15:51:24 2015 -0600
@@ -3,36 +3,39 @@
 ##
 # File: flagsync.py
 # Description: Sync the flag to a remote system.
+# WARNING DO NOT HARDCODE THE FLAG
 ##
 
 ##
 # External modules
 ##
-import socket                  # Network interaction, duh
+import os                       # Environment variable reading
+import socket                   # Network interaction, duh
 
 
 ##
-# Set connection details for host and port
+# Read connection details for host and port
 # Connect to remote service
 # Send flag and close the connection
 ##
 def sync_flag():
-       # Set connection details for host and port
-       host = '127.0.0.1'
-       port = 9001
-       flag = 'flag{Develop3rs_Dev3l0pers_D3velop3rs_Devl0p3rs!}'
```

`flag = 'flag{Develop3rs_Dev3l0pers_D3velop3rs_Devl0p3rs!}`
