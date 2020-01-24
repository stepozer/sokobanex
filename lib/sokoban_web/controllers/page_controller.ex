defmodule SokobanWeb.PageController do
  use SokobanWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
