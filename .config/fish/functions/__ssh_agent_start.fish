function __ssh_agent_start -d "start a new ssh agent"
    ssh-agent -c | sed 's/^setenv/set -xg/' | sed '/^echo/d' > $SSH_ENV
    chmod 600 $SSH_ENV
    source $SSH_ENV > /dev/null
end
