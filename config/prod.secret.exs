use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :sepal, Sepal.Endpoint,
  secret_key_base: "WHQdsSkJom8wDkKXbOwJtZQ+x+m/0tdiGnsnCC0ncQqmH5nbP+9aOUhUQ3JNU6om"

# Configure your database
config :sepal, Sepal.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL")

