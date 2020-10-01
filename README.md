# `fd`

Use `fzf` to browse your directories using fuzzy method.

~[Screenshot](screenshot.gif)

## Usage

```bash
fd
```

`fd` will look at directories in the current working directory, but if you want to look further, you can supply a depth, e.g.:

```bash
fd 2
```

## Requires

- `fzf`<sup>*</sup>

<sup>*</sup> If using [homebrew](https://brew.sh) on macOS, these will automatically be installed.

## Install

Using [antigen](https://github.com/zsh-users/antigen):

```bash
antigen bundle aubreypwd/zsh-plugin-fd@1.0.0
```

## Development

Install the package on `master`:

```bash
antigen bundle aubreypwd/zsh-plugin-fd
```

...and contribute upstream by working in `$HOME/.antigen/bundles/aubreypwd/zsh-plugin-fd`.

---

## Changelog

### 1.0.0

- First version
