defmodule SokobanWeb.Router do
  use SokobanWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SokobanWeb do
    pipe_through :browser

    get "/", PageController, :index

    get "/play/:pack/:level", PlayController, :show
    get "/play/:pack", PlayController, :pack
    get "/play", PlayController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SokobanWeb do
  #   pipe_through :api
  # end
end
