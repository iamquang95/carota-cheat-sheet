Iterm 2 + Prezto installation
===================================

[Iterm 2][1] installation
----------------------------

Go to website and download it

[Zsh][2] installation
------------------------

		brew install zsh

[Prezto][3] installation
-------------------------

1. Launch Zsh:

    zsh

2. Clone the repository:

    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

3. Create a new Zsh configuration by copying the Zsh configuration files
 provided:

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

4. Set Zsh as your default shell:

    chsh -s /bin/zsh

5. Restart iterm2

[fzf][4] installation
-----------------------

		brew install fzf

		/usr/local/opt/fzf/install


Customization
------------------------

1. ~/.zpreztorc

2. ~/.zshrc

3. iterm2 import color profile

[1]: https://www.iterm2.com/
[2]: http://sourabhbajaj.com/mac-setup/iTerm/zsh.html
[3]: https://github.com/sorin-ionescu/prezto
[4]: https://github.com/junegunn/fzf