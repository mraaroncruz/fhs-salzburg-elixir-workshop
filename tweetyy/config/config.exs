# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tweetyy,
  ecto_repos: [Tweetyy.Repo]

# Configures the endpoint
config :tweetyy, TweetyyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CP9cYK3cGWdvvKxhDY/zOCpIO35jmrACh/T1Cn0Q5glkXDAvwg2PStu0WNa7A8k3",
  render_errors: [view: TweetyyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tweetyy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
