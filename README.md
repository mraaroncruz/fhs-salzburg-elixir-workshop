## Don't forget to get your twitter creds at https://apps.twitter.com
add them to
- `tweetys/config/config`
- `tweetyy/config/dev.exs`

## Examples

__tweetys__

is the app from the first part

__tweetyy__

is the phoenix app

## Important commands

#### In both apps

`mix deps.get` download dependencies

`iex -S mix` open up project with REPL

#### in phoenix app

`mix phx.get.channel TweetStream` creates a channel

`mix phx.server` starts the phoenix app

`iex -S mix phx.server` start phoenix server with REPL

`mix ecto.create` creates a postgres db if your db is set up correctly

## Resources

- Sentiment analysis https://github.com/dantame/sentient/
- More robust sentiment analysis https://github.com/cblavier/twitter-feelings
