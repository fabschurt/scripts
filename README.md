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

### create-gitkeeps

This script recurses down a given directory, and creates a dummy `.gitkeep` file
in every empty subdirectory it finds. Useful only if you use [Git](https://git-scm.com/)
obviously.

**Usage:** `create-gitkeeps [--go] [path]`

* `--go`: by default, the script will do nothing but list the paths that would be
  created; you have to pass this option to make it actually create the `.gitkeep`
  files
* `path`: the root directory path to consider

### disable-spotlight

If there is one thing that I hate about OS X, it's Spotlight. It's so useless! I
even prefer going through the pain of opening a terminal window and use `find`
whenever I need to search for something; it's far less of a waste of time. Oh
yeah, that script disables the crappy bastard forever.

**Usage:** `disable-spotlight` (must be run as `root`)

### fix-weird-perms

This script recurses down a given directory, checks found files' and directories'
permissions, and changes them if needed.

**Usage:** `fix-weird-perms [--nas] [--do-fix] [--echo-commands] [path]`

* `--nas`: by default, the script will change files' permissions to `0644` and
  directories' permissions to `0755`; with this option set, the directories'
  permissions will be set to `u=rwx,g=rxs,o=rx` instead (this is useful if you
  own a Synology DiskStation and you have the `Default UNIX permissions` feature
  activated)
* `--do-fix`: by default, the script will do nothing but list the files which
  have wrong permissions; you have to pass this option to make it actually change
  the permissions
* `--echo-commands`: with this option, the script will do nothing no matter what,
  and it will just print the commands that would have been executed
* `path`: the root directory path to consider

### timecodes-to-chapters

This one is pretty exotic. You have to feed it a file containing timecodes and
descriptions formatted like this:

```
00:05:00  Hey yo
00:10:00  Yo some text yo
01:00:00  You get the point
```

…and it will output something like this:

```html
<ul>
<li><a href="?position=300" rel="nofollow">Hey yo</a></li>
<li><a href="?position=600" rel="nofollow">Yo some text yo</a></li>
<li><a href="?position=3600" rel="nofollow">You get the point</a></li>
</ul>
```

Timecodes **MUST** be formatted like the ones above (hours, minutes and seconds,
all with leading zeros), and there **MUST** be 1-n space(s) (or tab(s)) between
the timecode and its description.

_What the hell can I use this for_, you ask? Well, it's all up to you. It's
useful to me, but please feel free to think completely different about that.

**Usage:** `timecodes-to-chapters <path>`

* `path`: the path to the file containing the raw timecodes

### pandoc-pdf

This script wraps a Pandoc call with sensible defaults to perform a markup-to-PDF
conversion. The script will try and guess the right input format to use from the
input path's file extension.

Only GitHub Markdown (`.md`, `.markdown`) and reStructuredText (`.rst`) are
supported at the moment. Note that contrary to the default implementation, single
newlines inside GitHub Markdown paragraphs will be converted to spaces (so you
can hard wrap paragraphs in your editor, and they'll be unwrapped in the PDF
output).

**Usage:** `pandoc-pdf <input-path> <output-path>`

* `input-path`: the path to the input markup file
* `output-path`: the path for the output PDF file (must end with `.pdf` for the
  processing to actually take place)

## License

This package is licensed under the [MIT License](http://opensource.org/licenses/MIT).
