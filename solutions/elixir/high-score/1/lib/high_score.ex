defmodule HighScore do
  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.merge(scores, %{name => score})
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.merge(scores, %{name => 0})
  end

  def update_score(scores, name, score) do
    current_score = scores[name] || 0
    new_score = current_score + score
    Map.merge(scores, %{name => new_score})
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
