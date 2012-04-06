# open.vim

Open files that were found by an external command.

## Why

When you know exactly what file you want to open the built in vim commands work well.

```vim
:edit foo.rb
:split foo.rb
```

However, when using a plugin like [alternate](https://github.com/compactcode/alternate.vim) 
you will encounter the following issues:

* You will end up trying to edit an empty search result.
* You will end up trying to open a split for a file that is already open.

This plugin provides solutions to those problems.

## Usage

```vim
:Open("x")
```

* Edits the given file in the current window.

```vim
:OpenHorizontal("x")
```

* If the file is already open, bring it to focus.
* If the file is not open, edit it in a new horizontal split.

```vim
:OpenVertical("x")
```

* If the file is already open, bring it to focus.
* If the file is not open, edit it in a new vertical split.

### In all cases, when no file is given an error message will be displayed.