defmodule UeberauthPinterest.Mixfile do
  use Mix.Project

  @version "0.0.1"
  @url "https://github.com/matthewlehner/ueberauth_pinterest"

  def project do
    [app: :ueberauth_pinterest,
     version: @version,
     name: "Ueberauth Pinterest Strategy",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: @url,
     homepage_url: @url,
     description: description,
     deps: deps(),
     docs: docs]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp docs do
    [extras: ["README.md", "CONTRIBUTING.md"]]
  end

  defp description do
    "An Ueberauth strategy for Pinterest authentication."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Matthew Lehner"],
      licenses: ["MIT"],
      links: %{"GitHub": @url}]
  end
end
