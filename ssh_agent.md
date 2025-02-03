# SSH agent

An SSH agent runs in the background and manages your SSH keys.
`ssh-agent` is the default agent included with `OpenSSH`.

Configuration file: `~/.ssh/config`

Tip:
To make all ssh clients, including git store keys in the agent on first use, add the configuration setting AddKeysToAgent yes to ~/.ssh/config. Other possible values are confirm, ask and no (default).

In order to start the agent automatically and make sure that only one `ssh-agent` process runs at a time, add the following to your `~/.bashrc`: 
```bash
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
```
This will run a ssh-agent process if there is not one already, and save the output thereof. If there is one running already, we retrieve the cached ssh-agent output and evaluate it which will set the necessary environment variables. The lifetime of the unlocked keys is set to 1 hour. 

https://wiki.archlinux.org/title/SSH_keys#SSH_agents

## Manually loading keys into the ssh-agent

Start the ssh-agent in the background. And set up the necessary environment variables for it.
```bash
eval $(ssh-agent -s)
```
1. `ssh-agent -s`: This command starts the ssh-agent in the background and outputs the necessary environment variables to configure the shell to use the agent. The `-s` option specifies that the output should be in a format suitable for the sh-style shells
2. `$(...)`: [Command Substitution](./shell_commands.md)
3. `eval`: This command takes the output from the command substitution and evaluates it as a command in the current shell. This sets the environment variables for the ssh-agent.

```bash
# Check what keys are loaded
ssh-add -l

# Add your private key to the agent
ssh-add ~/.ssh/private_key

# Test your connection to git
ssh -T git@github.com
```

* https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
* https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server