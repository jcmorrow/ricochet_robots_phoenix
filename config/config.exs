# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ricochet_robots_phoenix,
  ecto_repos: [RicochetRobotsPhoenix.Repo]

# Configures the endpoint
config :ricochet_robots_phoenix, RicochetRobotsPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "B3I0w3b1o0gl5ydMw2aLwrSxLyy/Ijus7VIskDK8efmJClugrf2rjr6SNNoBWURK",
  render_errors: [view: RicochetRobotsPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RicochetRobotsPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
