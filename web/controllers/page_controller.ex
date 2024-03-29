defmodule Sepal.PageController do
  use Sepal.Web, :controller

  plug :action

  def index(conn, _params) do
    recent_posts = Repo.all(Sepal.Post, limit: 3)

    render conn, "index.html", posts: recent_posts
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

end
