defmodule ColoursWeb.PageController do
  use ColoursWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
