# open.vim

A simple vim plugin that adds a tiny bit of smarts when opening files.

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

