if status is-interactive
    #  Commands to run in interactive sessions can go here
end
# -------------------------------

# -- Basic
set -U fish_greeting ""
set -x MANPAGER 'nvim +Man!'
set -x EDITOR nvim
set -U SXHKD_SHELL sh

# -- alias
alias sudo='sudo -E'
alias ra=lf
alias s=fastfetch
alias lg=lazygit
alias zc="vim $HOME/.config/fish/config.fish"
alias vconf="cd $HOME/.config/nvim/ && nvim init.lua"
alias vim=nvim
alias top=btop
alias cat=bat
alias ls=eza
alias zig='zig-master'
alias zls='zls-master'

# -- go
set -gx GOPATH $HOME/study/go
set -gx GOBIN $GOPATH/bin
set -gx GOPROXY https://goproxy.io,direct

# -- rust
set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"

# -- gem
set -gx GEM_HOME "$(ruby -e 'puts Gem.user_dir')"

# -- ols config(odin-lsp manual)
set -gx OLS $HOME/.config/ols


# --path
set -gx PATH $HOME/.yarn/bin $HOME/.local/bin $HOME/.cabal/bin $GEM_HOME $HOME/.cargo/bin $GOBIN $GEM_HOME/bin $HOME/.dotnet/tools $OLS $PATH

# --lf
source $HOME/.config/lf/lf_icons.sh

# -- pnpm
set -gx PNPM_HOME "/home/shawn/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end



# ocaml-pkg-manager    opam-rsync-
# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/shawn/.opam/opam-init/init.fish' && source '/home/shawn/.opam/opam-init/init.fish' >/dev/null 2>/dev/null; or true
# END opam configuration
