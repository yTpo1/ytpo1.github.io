---
title: SSH
---

# SSH

Start the ssh-agent in the background and set up the necessary environment variables for it.
```bash
eval $(ssh-agent -s)
```
1. `ssh-agent -s`: This command starts the ssh-agent in the background and outputs the necessary environment variables to configure the shell to use the agent. The `-s` option specifies that the output should be in a format suitable for the sh-style shells
2. `$(...)`: [Command Substitution](./shell_commands.md)
3. `eval`: This command takes the output from the command substitution and evaluates it as a command in the current shell. This sets the environment variables for the ssh-agent.


Check what keys are loaded
```bash
ssh-add -l
```

load? a public key
```bash
ssh-add ~/.ssh/public_key
```

Test your connection to git
```bash
ssh -T git@github.com
```


https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server