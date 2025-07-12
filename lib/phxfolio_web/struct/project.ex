defmodule PhxfolioWeb.Struct.Project do
  @enforce_keys [:title, :subtitle, :technologies]
  defstruct [
    :title,
    :subtitle,
    :image,
    :description,
    :technologies,
    :github,
    :live
  ]
end
