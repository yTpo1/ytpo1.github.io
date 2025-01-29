# SSH

```
# ???
eval $(ssh-agent -s)

# check what keys are loaded
ssh-add -l

# load? a public key
ssh-add ~/.ssh/public_key

# test your connection
ssh -T git@github.com
```


https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server