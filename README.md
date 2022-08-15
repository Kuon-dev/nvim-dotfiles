# nvim-dotfiles
This is my personal dotfiles for my Neovim setup.

---

## Features 

---

## Prerequisites
These are the packages that are required for this project.
- Git
- Neovim
- Ripgrep
- FuzzySearch (fzf)
- Scoop / Choco (Windows)
- Homebrew (MacOS / Linux)

If you are using linux, any package manager will do as long as it contains the required packages.

For example:

#### Windows:

```bash
scoop install git
chocolatey install git
```

#### MacOS / Linux :

```bash
brew install git 
```

---

## Getting started
#### 1. Go to the root directory where you will be putting your nvim scripts on.
Example:
- `C:/Users/User/AppData/Local/` (Windows)
- `~/.config/`

#### 2. Create a new folder called "nvim"
```bash
mkdir nvim
```

#### 3. Clone this project in the nvim directory

```bash
cd nvim
git clone https://github.com/Kuon-dev/nvim-dotfiles.git .
```

#### 4. Install vim plug

Unix / Linux
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Windows
```bash
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

5. Start nvim and install plugins
```bash
nvim
```

During this process you are likely going to encounter some error messages popping up. Do not worry, this will happen when you have yet to install the plugins via VimPlug.

All you have do to at this current state is to hold `ENTER` key, afterwards you will have to type `:PlugInstall`

6. Restart nvim
type `:q` then start nvim again by typping `nvim`. I recommed setting up an Alias so whenever you type `vi` it will start nvim.

---

## License

