defmodule MqttTransport.Mixfile do
  use Mix.Project

  def project do
    [app: :mqtt_transport,
     version: "0.1.0",
     elixir: "~> 1.3-rc",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:vmq_commons, github: "erlio/vmq_commons", manager: :rebar3},
     {:gen_mqtt, "~> 0.2.0"}]
  end
end
