defmodule Sepal.PageController do
  use Sepal.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
