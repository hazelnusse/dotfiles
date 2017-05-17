function __ssh_agent_is_started -d "check if ssh agent is already started"
    if test -f $SSH_ENV
        and test -z "$SSH_AGENT_PID"
        source $SSH_ENV > /dev/null
    end

    if test -z "$SSH_AGENT_PID"
        return 1
    end

    pgrep ssh-agent > /dev/null
    return $status
end
