defmodule Colours.Repo do
  use Ecto.Repo,
    otp_app: :colours,
    adapter: Ecto.Adapters.Postgres
end
