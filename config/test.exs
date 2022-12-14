import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :slumber, Slumber.Repo,
  username: "slumber",
  password: "postgres",
  hostname: "localhost",
  database: "slumber_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :slumber_web, SlumberWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zvJVxKDG9i6TK5dbmJozLKhHkLnVNXC/f7anGRSatgoh1gaWmLqMn27pT6Iy89jc",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :slumber, Slumber.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
