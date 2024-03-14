#!/bin/zsh

ZSH="$HOME/.zshrc"
P10K="$HOME/.p10k.zsh"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
TMUX="$HOME/.tmux.conf"

if [[ ! -h "$ZSH" ]]; then
    echo "=> Symlinking zshrc to $ZSH"
    ln -s "$(pwd)/zshrc" "$ZSH"
fi

if [[ ! -h "$P10K" ]]; then
    echo "=> Symlinking p10k.zsh to $P10K"
ln -s "$(pwd)/p10k.zsh" "$P10K"
fi

if [[ ! -h "$ZSH_CUSTOM" ]]; then
    echo "=> Symlinking oh-my-zsh/custom to $ZSH_CUSTOM"
ln -s "$(pwd)/oh-my-zsh/custom" "$ZSH_CUSTOM"
fi

if [[ ! -h "$TMUX" ]]; then
    echo "=> Symlinking .tmux.conf to $TMUX"
ln -s "$(pwd)/.tmux.conf" "$TMUX"
fi
