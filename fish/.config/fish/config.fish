#    --------- ALIAS ---------

if status is-interactive
    alias sudo='sudo -E'
    alias ra=lf
    alias s=fastfetch
    alias lg=lazygit
    alias vim=nvim
    alias top=btop
    alias cat=bat
    alias ls=eza
    alias zig='zig-master'
    alias zls='zls-master'

    alias zc="nvim $HOME/.config/fish/config.fish"
    alias vconf="cd $HOME/.config/nvim/; and nvim init.lua"
end



#    --------- ENV ----------

set -U  fish_greeting ""

set -gx MANPAGER 'nvim +Man!'
set -gx EDITOR nvim

set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"

set -gx GOPATH $HOME/study/go
set -gx GOBIN $GOPATH/bin
set -gx GOPROXY https://goproxy.io,direct

set -gx PNPM_HOME "/home/shawn/.local/share/pnpm"



#   --------- PATH ---------

fish_add_path --path \
    $PNPM_HOME \
    $HOME/.yarn/bin \
    $HOME/.local/bin \
    $HOME/.cabal/bin \
    $HOME/.cargo/bin \
    $GOBIN \
    $HOME/.dotnet/tools


#   ------- EXTERNAL -------

if test -f "$HOME/.config/lf/lf_icons.sh"
    source "$HOME/.config/lf/lf_icons.sh"
end

if not string match -q "*fnm_multishells*" "$PATH"
    fnm env --use-on-cd --shell fish | source
end

