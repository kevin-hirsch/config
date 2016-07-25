# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub and more.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [gitignore.io](https://www.gitignore.io/api/swift). |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load up the Ocean theme (instructions [below](#ocean-theme-for-terminal))

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. Install Homebrew

- Install [Homebrew](http://brew.sh) with the following command:
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 5. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.3`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.3`.

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

### 6. Additional dependencies

- Install node via Homebrew: `brew install node`.

## Ocean Theme for Terminal

<img src="https://cloud.githubusercontent.com/assets/98681/5622107/93364f60-94f2-11e4-9deb-7b1476b50b52.png" width="762">

This is a quick Terminal.app profile (color scheme) for OS X based on the [base16 Ocean theme](http://chriskempson.github.io/base16/#ocean).

If you like this theme, be sure to check out the [editor color schemes](https://github.com/chriskempson/base16-textmate) and [Spacegray UI theme](http://kkga.github.io/spacegray/) for Atom and Sublime Text.

### Usage

1. Download this repo.
2. Open up Terminal, go to **Preferences**, then **Profiles**.
3. In the bottom left, click the settings cog and select **Import...**. Navigate to the download file and open it.
4. Lastly, set it as your default by selecting the new profile and clicking the **Default** button.

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**


## License

Licensed MIT.
Heavily inspired on [mdo/config](https://github.com/mdo/config).
