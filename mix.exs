defmodule Sepal.Mixfile do
  use Mix.Project

  def project do
    [app: :sepal,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Sepal, []},
     applications: [:phoenix, :cowboy, :logger, :ecto]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, github: "hayesgm/phoenix", override: true},
     {:phoenix_html, "~> 1.0"},
     {:phoenix_ecto, "~> 0.3.2"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_live_reload, "~> 0.3"},
     {:cowboy, "~> 1.0"},
     {:earmark, "~> 0.1.15"},
     {:timex, "~> 0.13.4"},
     {:plug_basic_auth, github: "rbishop/plug_basic_auth"},
     {:poolboy, "~> 1.4", override: true}]
  end
end
