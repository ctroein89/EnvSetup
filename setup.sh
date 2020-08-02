#!/bin/sh
zsh_shell='/bin/zsh'
bash_shell='/bin/bash'

case "$SHELL" in
  $zsh_shell)
    shell_name='zsh'
    rcfile="~/.zshrc"
    ;;
  $bash_shell)
    shell_name='bash'
    rcfile="~/.zshrc"
    ;;
  *)
    echo "unrecognized shell: $SHELL"
    exit 1
    ;;
esac


case "$OSTYPE" in
  darwin*)
    os="MACOS"
    ;;
  linux*)
    os="LINUX"
    ;;
  msys*)
    os="WINDOWS"
    ;;
  *)
    os="unrecognized OS: $OSTYPE"
    exit 1
    ;;
esac

echo "Running $shell_name on $os"

check_dependencies () {
  missing_dependency=false
  if [ ! -s vimrc ]; then
    echo "vimrc not found in current folder"
    missing_dependency=true
  fi

  if [ $missing_dependency == true ]; then
    echo "At least on dependency is missing. Stopping set-up."
    exit 1
  fi
}
check_dependencies

setup_vim () {
  echo "Setting up vim"

  if [ ! -e ~/.vim/bundle/Vundle.vim ]
  then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi

  cp vimrc ~/.vimrc
  vim +PluginInstall +qall
}
setup_vim

if [ $os == "MACOS" ]; then
  # don't re-install Homebrew if it's already is installed
  if [ ! command -v brew &> /dev/null ]; then
    echo "installing Homebrew (brew.sh)"
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  fi
fi

echo "Setup complete. Enjoy!"
