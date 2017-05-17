alias vim=nvim
alias vi=nvim
fish_vi_key_bindings
set -x EDITOR nvim

if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end
