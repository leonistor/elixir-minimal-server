defmodule MinimalServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_server,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalServer.Application, []}
    ]
  end

  defp deps do
    [
      {:poison, "~> 4.0"},
      {:plug, "~> 1.10"},
      {:plug_cowboy, "~> 2.0"}
      # {:cowboy, "~> 2.7"}
    ]
  end
end
