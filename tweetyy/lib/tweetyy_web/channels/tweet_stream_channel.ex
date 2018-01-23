defmodule TweetyyWeb.TweetStreamChannel do
  use TweetyyWeb, :channel

  def join("tweet_stream:" <> term, payload, socket) do
    {:ok, %{hello: term}, socket}
  end
end
