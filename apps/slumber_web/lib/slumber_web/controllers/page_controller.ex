defmodule SlumberWeb.PageController do
  use SlumberWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
