defmodule PhxfolioWeb.HealthController do
  use PhxfolioWeb, :controller

  def health(conn, _params) do
    json(conn, %{status: "ok", response: "Health is OK"})
  end
end
