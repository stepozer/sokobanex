defmodule Sokoban.User do
  use SokobanWeb, :model

  schema "users" do
    field :email, :string
    field :password, :string

    timestamps(inserted_at: :created_at)
  end
end
