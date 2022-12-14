defmodule Slumber.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Slumber.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Slumber.PubSub}
      # Start a worker by calling: Slumber.Worker.start_link(arg)
      # {Slumber.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Slumber.Supervisor)
  end
end
