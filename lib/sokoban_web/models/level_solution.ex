defmodule SokobanWeb.LevelSolution do
  use SokobanWeb, :model

  schema "level_packs" do
    belongs_to :user, SokobanWeb.User
    belongs_to :level, SokobanWeb.Level
    field :steps, :integer
    field :solution, :string

    timestamps(inserted_at: :created_at)
  end
end
