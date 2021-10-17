defmodule NinDB.MixProject do
  use Mix.Project

  def project, do: [
    app: :nin_db,
    version: "0.1.0",
    elixir: "~> 1.12",
    start_permanent: Mix.env() == :prod,
    deps: deps()
  ]

  def application, do: [
    extra_applications: [:logger],
    mod: {NinDB.Application, []}
  ]

  defp deps, do: [
    {:ecto_sql, "~> 3.0"},
    {:postgrex, ">= 0.0.0"},
  ]
end
