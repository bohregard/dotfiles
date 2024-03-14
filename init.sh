#!/bin/zsh

SCRIPT_DIR=${0:a:h}
ZSH="$HOME/.zshrc"
P10K="$HOME/.p10k.zsh"
OH_MY_ZSH_ROOT="$HOME/.oh-my-zsh"
OH_MY_ZSH_CUSTOM="$OH_MY_ZSH_ROOT/custom"
OH_MY_ZSH_PLUGINS="$OH_MY_ZSH_CUSTOM/plugins"
TMUX="$HOME/.tmux.conf"

echo "=> Checking Symlinks"

if [[ ! -h "$ZSH" ]]; then
    echo "=> Symlinking zshrc to $ZSH"
    ln -s "$SCRIPT_DIR/zshrc" "$ZSH"
fi

if [[ ! -h "$P10K" ]]; then
    echo "=> Symlinking p10k.zsh to $P10K"
    ln -s "$SCRIPT_DIR/p10k.zsh" "$P10K"
fi

if [[ ! -h "$OH_MY_ZSH_CUSTOM" ]]; then
    echo "=> Symlinking oh-my-zsh/custom to $OH_MY_ZSH_CUSTOM"
    ln -s "$SCRIPT_DIR/oh-my-zsh/custom" "$OH_MY_ZSH_CUSTOM"
fi

if [[ ! -h "$TMUX" ]]; then
    echo "=> Symlinking .tmux.conf to $TMUX"
    ln -s "$SCRIPT_DIR/tmux.conf" "$TMUX"
fi

echo "=> Setting Directory permissions"

chmod 755 $OH_MY_ZSH_PLUGINS/zsh-autosuggestions
chmod 755 $OH_MY_ZSH_PLUGINS/zsh-syntax-highlighting
chmod 755 $OH_MY_ZSH_PLUGINS
chmod 755 $OH_MY_ZSH_ROOT/cache/completions