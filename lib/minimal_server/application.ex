defmodule MinimalServer.Application do
  use Application

  def start(_type, _args) do
    children = [
      MinimalServer.Endpoint
    ]

    opts = [
      strategy: :one_for_one,
      name: MinimalServer.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
