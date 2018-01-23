defmodule TweetyyWeb.PageController do
  use TweetyyWeb, :controller

  def index(conn, _params) do
    IO.inspect(conn)
    render conn, "index.html"
  end
end
