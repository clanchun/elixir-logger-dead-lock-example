import Config

config :logger,
  level: :info,
  # level: :warn,
  backends: [:console, Logger.Backends.TroubleMaker],
  console: [
    format: "$time $metadata[$level] $levelpad$message",
    metadata: [:application, :module, :function, :file, :line, :pid]
  ],
  # sync_threshold: 2
  sync_threshold: 0
