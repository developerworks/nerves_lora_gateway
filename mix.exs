defmodule NervesLoraGateway.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves_lora_gateway,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package,
     compilers: [:elixir_make] ++ Mix.compilers,
   ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:elixir_make, "~> 0.3"}
    ]
  end

  defp package do
    [
      files: ["lib", "src", "config", "mix.exs", "README*", "LICENSE*", "Makefile"],
      maintainers: ["developerworks"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/developerworks/nerves_lora_gateway"}
    ]
  end

end
