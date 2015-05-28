# Scripts

This is just a bunch of PHP and Bash CLI utilities which help me do stuff. I'm
putting them up on GitHub for storage, and because who knows, maybe some of this
crap can actually be useful to somebody. The PHP stuff dates back to the time
when I didn't know Ruby, else I would have gone down the shiny red road for sure.

## Installation

Just `clone` or [unzip](https://github.com/fabschurt/scripts/archive/master.zip)
the project locally, and then either run `deploy.sh` or move the content of the
`bin/` directory into whatever destination suits you best (it should be covered
by your `$PATH` though, otherwise it's rather pointless).

## The scripts

### clean-jpeg

A lazy preconfigured wrapper around `jpegoptim`, to make it strip metadata from
JPEGs very agressively.

**Usage:** `clean-jpeg <files...>`

### create-gitkeeps

This script recurses down a given directory, and creates a dummy `.gitkeep` file
in every empty subdirectory it finds. Useful only if you use [Git](https://git-scm.com/)
obviously.

**Usage:** `create-gitkeeps [--go] <path>`

* `--go`: by default, the script will do nothing but list the paths that would be
created; you have to pass this option to make it actually create the `.gitkeep`
files

### disable-spotlight

If there is one thing that I hate about OS X, it's Spotlight. It's so useless! I
even prefer going through the pain of opening a terminal window and use `find`
whenever I need to search for something; it's far less of a waste of time. Oh
yeah, that script disables the crappy bastard forever.

**Usage:** `disable-spotlight` (must be run as `root`)

### fix-weird-perms

This script recurses down a given directory, checks found files' and directories'
permissions, and changes them if needed.

**Usage:** `fix-weird-perms [--nas] [--do-fix] [--echo-commands] <path>`

* `--nas`: by default, the script will change files' permissions to `0644` and
directories' permissions to `0755`; with this option set, the directories'
permissions will be set to `u=rwx,g=rxs,o=rx` instead (this is useful if you own
a Synology DiskStation and you have the `Default UNIX permissions` feature
activated)
* `--do-fix`: by default, the script will do nothing but list the files which
have wrong permissions; you have to pass this option to make it actually change
the permissions
* `--echo-commands`: with this option, the script will do nothing no matter what,
and it will just print the commands that would have been executed

### timecodes-to-chapters

This one is pretty exotic. You have to feed it a file containing timecodes and
descriptions formatted like this:

```
00:05:00  Some fat text describing what's going on at that time of the played media
00:10:00  Some more fat text because fat text is cool
01:00:00  You get the point
```

…and it will output something like this:

```html
<ul>
<li><a href="?position=300" rel="nofollow">Some fat text describing what's going on at that time of the played media</a></li>
<li><a href="?position=600" rel="nofollow">Some more fat text because fat text is cool</a></li>
<li><a href="?position=3600" rel="nofollow">You get the point</a></li>
</ul>
```

Timecodes **MUST** be formatted like the ones above (hours, minutes and seconds,
all with leading zeros), and there **MUST** be 1-n space(s) (or tab(s)) between
the timecode and its description.

_What the hell can I use this for_, you ask? Well, it's all up to you. It's
useful to me, but please feel free to think completely otherwise.

**Usage:** `timecodes-to-chapters <file>`

## License

This package is licensed under the [MIT License](http://opensource.org/licenses/MIT).
