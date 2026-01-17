# 🐮 Melbi Custom Cows

A collection of Melbi-related high-fidelity, **Truecolor (24-bit)** ASCII art for `cowsay`. 

![Melbi Cow](./assets/melbi-cow.gif)

## 🚀 Quick Install

Run this one-liner to download the cows and set up your `COWPATH` automatically:

```bash
bash -c "$(curl -sSL https://raw.githubusercontent.com/melbi-lang/cowsay/main/install.sh)"
```

After that just run from any directory:

``` bash
cowsay -f melbi-large-color 'Melbi, the logical choice!'
```

## 🛠 Manual Usage

If you prefer not to run the installer, you can use the `-f` flag with the raw file URL or local path:

```bash
cowsay -f ./cows/melbi.cow "Live long and prosper."

```

## 🌈 Requirements

A `cowsay` binary installed, like from `brew install cowsay`.

These cows use **Truecolor ANSI sequences**. For the best experience, use a modern terminal:

* **macOS:** iTerm2, Kitty, or Ghostty.
* **Linux:** Alacritty, GNOME Terminal, or Konsole.
* **Windows:** Windows Terminal.

---

*Maintained by the [Melbi Team](https://github.com/melbi-lang).*
