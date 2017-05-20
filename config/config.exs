# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :fptest,
  ecto_repos: [Fptest.Repo]

# Configures the endpoint
config :fptest, Fptest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Cr1vArD2kbnuhZ4Z5IK09ewMcHw85iVjvbzrnBZ7vHY3dMzuaCc3njkOUVOTlstD",
  render_errors: [view: Fptest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Fptest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
