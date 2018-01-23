defmodule Tweetyy.Tweeting.Worker do
  use GenServer

  def start_link(term) do
    GenServer.start_link(__MODULE__, term)
  end

  def init(term) do
    {:ok, term, 0}
  end

  def handle_info(:timeout, term) do
    start_stream(term)
    {:noreply, term}
  end

  def start_stream(term) do
    ExTwitter.stream_filter(track: term)
    |> Stream.map(fn tweet -> tweet.text end)
    |> Enum.each(&broadcast_tweet/1)
  end

  def print_tweet(tweet) do
    IO.puts(">>> #{tweet}")
  end

  def broadcast_tweet(tweet) do
    TweetyyWeb.Endpoint.broadcast("tweet_stream:trump", "tweet:new", %{body: tweet})
  end
end
