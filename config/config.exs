# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sokoban,
  ecto_repos: [Sokoban.Repo]

# Configures the endpoint
config :sokoban, SokobanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9/ep5mvI3DudPwTAn8L3+uc2ikBGFZqdwtT0c65EkpGtOSaH6dTRPmDki1R+fXFg",
  render_errors: [view: SokobanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sokoban.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
