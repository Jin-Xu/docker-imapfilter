## Imapfilter

This is an imapfilter docker image based on apline

```bash
docker run -it --rm -v "$HOME/imapfilter_config.lua:/config.lua"
```

## Environment variables

| Name | Type | Description |
| --- | --- | --- |
| `DAEMON` | boolean | Run as a "daemon" - this just runs it in a bash loop |
| `CONFIG` | string | Path to the config file, defaults to /config.lua |
