defmodule SokobanWeb.PlayController do
  use SokobanWeb, :controller

  alias Sokoban.Level
  alias Sokoban.LevelPack

  def index(conn, _params) do
    level_packs = Repo.all(LevelPack)
    render(conn, "index.html", level_packs: level_packs)
  end

  # def pack(conn, params) do
  #   level_pack = Repo.get_by!(LevelPack, slug: params["pack"])
  #   levels = Level
  #     |> where([level], level.level_pack_id == ^level_pack.id)
  #     |> preload(:level_pack)
  #     |> limit(32)
  #     |> order_by([level], [asc: level.id])
  #     |> Repo.all
  #     # Level.where(level_pack: @level_pack).order(id: :asc).page(params[:page]).per(32)
  #   render(conn, "pack.html", level_pack: level_pack, levels: levels)
  # end

  def show(conn, params) do
    level_pack = Repo.get_by!(LevelPack, slug: params["pack"])
    level      = Repo.get_by!(Level, level_pack: level_pack, name: params["level"])
    next_level = level.next_level
    # conn       = put_gon(conn, [
    #   sokoban_level:          level.level,
    #   sokoban_level_id:       level.id,
    #   sokoban_next_level_url: play_path(conn, :pack, next_level.level_pack.slug, :level, next_level.name)
    # ])
    render(conn, "pack.html", level: level, level_pack: level_pack)
  end
end
