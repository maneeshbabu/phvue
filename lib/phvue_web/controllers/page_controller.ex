defmodule PhvueWeb.PageController do
  use PhvueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
