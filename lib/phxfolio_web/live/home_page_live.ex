defmodule PhxfolioWeb.PhxfolioWeb.MyHomeLive do
  use PhxfolioWeb, :live_view

  alias PhxfolioWeb.UI.Navbar
  alias PhxfolioWeb.UI.SkillSection
  alias PhxfolioWeb.UI.MyCard
  alias PhxfolioWeb.UI.ProjectSection
  alias PhxfolioWeb.UI.AboutSection
  alias PhxfolioWeb.UI.Footer

  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "home")}
  end

end
