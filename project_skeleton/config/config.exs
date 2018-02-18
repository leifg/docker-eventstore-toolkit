use Mix.Config

config :eventstore,
  registry: :local,
  column_data_type: "jsonb"

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB"),
  hostname: System.get_env("POSTGRES_HOST"),
  port: System.get_env("POSTGRES_PORT"),
  pool: DBConnection.Poolboy,
  pool_size: 1,
  pool_overflow: 0
