defmodule Fptest.PageController do
  use Fptest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  def about(conn, _params) do
    render conn, "about.html"
  end
end
