# elixir-logger-dead-lock-example

## Demo

```
mix release

in shell 1: _build/dev/rel/lock/bin/lock start

in shell 2: _build/dev/rel/lock/bin/lock remote
> require Logger
> Logger.info("test") # blocks here

# check Logger process info
in shell 3: _build/dev/rel/lock/bin/lock remote
> Logger |> Process.whereis |> Process.info

# 1. Logger is in waiting state 2. message queue length is 1
```

There're two ways to resolve the dead lock:

1. Change the log level to `:warn`.
2. Increase the `sync_threshold` larger than 1.

