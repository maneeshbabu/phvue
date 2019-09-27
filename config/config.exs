# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phvue,
  ecto_repos: [Phvue.Repo]

# Configures the endpoint
config :phvue, PhvueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4laUm6O5HRV5NunnbjiWKA6oTQk43XKAsINmBY2xYTuGApeN4rCDuu1QHc94rLF5",
  render_errors: [view: PhvueWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phvue.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
