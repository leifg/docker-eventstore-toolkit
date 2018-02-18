defmodule EsWrapper.Mixfile do
  use Mix.Project

  def project do
    [
      app: :es_wrapper,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:eventstore, github: "commanded/eventstore", override: true},
    ]
  end
end
