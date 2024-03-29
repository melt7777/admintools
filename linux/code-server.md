# code-server

## code-server documentation

<https://coder.com/docs/code-server/latest/FAQ>

## Install code-server

`curl -fsSL https://code-server.dev/install.sh | sh`

When code-server starts up, it creates a default config file,

~/.config/code-server/config.yaml

Change the port/password/options as you see fit, according to code-server documentation. Example with hashed password and port 8888:

```yaml
bind-addr: 0.0.0.0:8888
auth: password
hashed-password: "$argon2i$v=19$m=4096,t=3,p..."
cert: false
disable-telemetry: true
disable-getting-started-override: true
```

## Commands

Install extension:

`code-server --install-extension ms-python.python`

Start on every boot:

`sudo systemctl enable --now code-server@$USER`

Restart code-server:

`sudo systemctl restart code-server@$USER`

Generate hashed-password for code-server:

`echo -n "mypass" | npx argon2-cli -e`

Get help and config options for code-server:

`code-server --help`
