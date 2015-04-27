# Scripts

Just a bunch of PHP and Bash CLI utilities which helps me do stuff. I'm putting
them on GitHub for storage, and because who knows, maybe some of this crap can
actually be useful to somebody.

## The scripts

### `backup-to-nas`

A shortcut to trigger my [backup](http://meskyanichi.github.io/backup/v4/) workflow.

**Usage:** `backup-to-nas`

### `clean-jpeg`

A tiny preconfigured wrapper around `jpegoptim`.

**Usage:** `clean-jpeg <files>`

### `create-gitkeeps`

This script recurses down a given directory, and create a dummy `.gitkeep` file
in every empty subdirectory it finds. Useful only if you use [Git](https://git-scm.com/)
obviously.

**Usage:** `create-gitkeeps <path>`

### `disable-spotlight`

If there is one thing that I hate in Mac OS X, it's Spotlight. It's so useless!
I even prefer going through the pain of opening a terminal window and use `find`
when I need to search for something, it's far less of a waste of time. Oh yeah,
that script disables the crappy bastard forever.

**Usage:** `disable-spotlight` (must be run as `root`)

### `fix-weird-perms`

This script recurses down a given directory, checks found files' and directories'
permissions, and change them if needed.
