# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :sepal, Sepal.Endpoint,
  url: [host: "localhost"],
  root: Path.expand("..", __DIR__),
  secret_key_base: "PvBW9Lb1WqUUcpLenIIQtPDKXHPy1lAnWYl1kqYVzFYQamVdNGtNt4s7gLiDapOR",
  debug_errors: false,
  pubsub: [name: Sepal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

PlugAuth.Authentication.Basic.add_credentials("admin", "redFox22", %{role: :admin})

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
