# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lad,
  ecto_repos: [Lad.Repo]

# Configures the endpoint
config :lad, Lad.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Qj69K0T+N7qakQYTnHOfUJGmqS6+tMaP2asAbeaMWCA4qH0Pd1pSJjpXtxOG9JDs",
  render_errors: [view: Lad.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lad.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
