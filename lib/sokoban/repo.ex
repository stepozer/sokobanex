defmodule Sokoban.Repo do
  use Ecto.Repo,
    otp_app: :sokoban,
    adapter: Ecto.Adapters.Postgres
end
