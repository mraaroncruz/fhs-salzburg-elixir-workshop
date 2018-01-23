defmodule Tweetys.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  use Supervisor

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Tweetys.Worker.start_link(arg)
      worker(Tweetys.Worker, ["trump"], restart: :permanent),
      worker(Tweetys.Worker, ["cats"], restart: :permanent),
      worker(Tweetys.Worker, ["crypto"], restart: :permanent),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :simple_one_for_one, name: Tweetys.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
