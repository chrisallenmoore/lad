defmodule Lad.Web.PageController do
  use Lad.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
