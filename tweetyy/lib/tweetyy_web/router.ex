defmodule TweetyyWeb.Router do
  use TweetyyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TweetyyWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  #scope "/api", TweetyyWeb do
    #pipe_through :api
    #get "/", APIHomeController, :index
  #end
end
