defmodule Sepal.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Sepal do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/posts", PostController
  end

  scope "/api", Sepal do
    pipe_through :api

    get "/", ApiController, :index
    get "/:name", ApiController, :show
  end

end
