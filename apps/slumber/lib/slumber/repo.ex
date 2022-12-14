defmodule Slumber.Repo do
  use Ecto.Repo,
    otp_app: :slumber,
    adapter: Ecto.Adapters.Postgres
end
