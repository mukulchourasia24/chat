# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chat,
  ecto_repos: [Chat.Repo]

# Configures the endpoint
config :chat, ChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FvN/m9zPQUn9P1PxgzOsnndV/ocqZWkZWcy0pLbQkQlX1eY7Kpb8OUS9MgfCavCc",
  render_errors: [view: ChatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
