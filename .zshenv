################################################################################
### Zsh start-up files quick reference                    (credit: ChatGPT)  ###
###                                                                          ###
### .zshenv   – loaded by *every* zsh (login, subshell, script).             ###
###              ▸ keep it tiny: PATH/LANG/EDITOR exports, other env vars.   ###
###                                                                          ###
### .zprofile – loaded once by a *login* interactive shell (first tab).      ###
###              ▸ heavy one-off setup: brew/pyenv/asdf init, ssh-agent,     ###
###                ulimit tweaks, PATH builders.                             ###
###                                                                          ###
### .zshrc    – loaded by every *interactive* shell (login & subshell).      ###
###              ▸ UI tweaks: prompt/theme, aliases, functions, completion,  ###
###                key-bindings, setopt.                                     ###
###                                                                          ###
### Load order                                                               ###
###   login interactive            : zshenv → zprofile → zshrc               ###
###   non-login interactive (sub)  : zshenv → zshrc                          ###
###   non-interactive (scripts)    : zshenv                                  ###
###                                                                          ###
### Rule of thumb: minimal in env, heavy in profile, UI in rc.               ###
################################################################################

# Adds cabal to PATH
export PATH="$HOME/.ghcup/bin:$PATH"
