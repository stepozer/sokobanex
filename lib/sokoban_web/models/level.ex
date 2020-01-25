defmodule SokobanWeb.Level do
  use SokobanWeb, :model

  schema "levels" do
    belongs_to :level_pack, SokobanWeb.LevelPack
    field :name, :string
    field :level, :string
    field :solutions_count, :integer

    timestamps(inserted_at: :created_at)
  end
end
