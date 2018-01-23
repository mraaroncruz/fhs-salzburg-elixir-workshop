defmodule TweetysTest do
  use ExUnit.Case
  doctest Tweetys

  test "greets the world" do
    assert Tweetys.hello() == :world
  end
end
