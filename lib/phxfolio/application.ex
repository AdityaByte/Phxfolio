defmodule Phxfolio.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PhxfolioWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:phxfolio, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Phxfolio.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Phxfolio.Finch},
      # Start a worker by calling: Phxfolio.Worker.start_link(arg)
      # {Phxfolio.Worker, arg},
      # Start to serve requests, typically the last entry
      PhxfolioWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phxfolio.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhxfolioWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
