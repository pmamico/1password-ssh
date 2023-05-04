# 1password-ssh
SSH login with fingerprint using 1password.  
The original intention was to allow fingerprint login from the terminal.

## how it works

When you run `ssh example-host`, the script is looking for an entry in 1password called `example-host`.  
If there is a password for that, it fills the password with `exp`  
otherwise just calls your ssh command.  

## how to install

```
NOTE: a simpler installer is planned, optimized for my environment for now
```

### Prerequisites

* 1password-cli (`op`)
* ssh

### 1.
Move `exp` and `s.sh` somewhere under your `$PATH`  
In this example, these files are at `~/script/`.
### 2.
Set an alias overriding your `ssh` command that calls the `s.sh` instead.  

`fish`  (~/.config/fish/config.fish)
```sh
function ssh
     ~/script/s.sh $argv
end
```
`bash` (~/.profile)
```sh
alias ssh='~/script/s.sh "$@"'
```

## tested on

* 1password8, fish, macOs
