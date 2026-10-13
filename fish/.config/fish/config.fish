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

set -gx ZLS $HOME/.config/zls/

# flutter
set -gx PUB_HOSTED_URL "https://pub.flutter-io.cn"
set -gx FLUTTER_STORAGE_BASE_URL "https://storage.flutter-io.cn"
set -gx CHROME_EXECUTABLE "/usr/bin/google-chrome-stable"
# android
set -gx ANDROID_HOME "/home/shawn/Android/Sdk"



#   --------- PATH ---------

fish_add_path --path \
    $ZLS \
    $PNPM_HOME \
    $HOME/.yarn/bin \
    $HOME/.local/bin \
    $HOME/.cabal/bin \
    $HOME/.cargo/bin \
    $GOBIN \
    $HOME/.luarocks/bin \
    $HOME/.dotnet/tools \
    $HOME/Documents/flutter/bin/ \
    $ANDROID_HOME \
    $ANDROID_HOME/platform-tools \
    $ANDROID_HOME/cmdline-tools/latest/bin \
    $ANDROID_HOME/emulator



#   ------- EXTERNAL -------

if test -f "$HOME/.config/lf/lf_icons.sh"
    source "$HOME/.config/lf/lf_icons.sh"
end

if not string match -q "*fnm_multishells*" "$PATH"
    fnm env --use-on-cd --shell fish | source
end

