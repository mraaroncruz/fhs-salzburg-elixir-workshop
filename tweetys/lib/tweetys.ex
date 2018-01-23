defmodule Tweetys do
  require Logger

  def search(terms) when is_list(terms) do
    Enum.map(terms, &search/1)
    |> Enum.map(&Task.yield/1)
    |> Enum.flat_map(&(&1 |> Tuple.to_list |> Enum.at(1)))
  end

  def search(term) do
    Task.async fn ->
      ExTwitter.search(term)
      |> Stream.map(fn tweet -> tweet.text end)
      |> Enum.to_list
    end
  end
end
