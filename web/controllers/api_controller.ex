defmodule Sepal.ApiController do
  use Sepal.Web, :controller

  plug :action

  def index(conn, _params) do
    json conn, %{name: "Geoff"}
  end

  def show(conn, %{"name" => name}) do
    json conn, %{name: name}
  end
end