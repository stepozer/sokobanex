defmodule SokobanWeb.LevelPack do
  use SokobanWeb, :model

  schema "level_packs" do
    field :name, :string
    field :slug, :string
    field :seqnum, :integer
    field :levels_count, :integer
    field :description, :string

    timestamps(inserted_at: :created_at)
  end
end
