defmodule BirdCount do
  def today(list) do
    case length(list) do
    0 -> nil
    _ -> 
      [head | _tail] = list
      head
    end
  end

  def increment_day_count(list) do
    case length(list) do
    0 -> [1]
    1 ->
      today = today(list)
      [today + 1]
    _ ->
      tod = today(list)
      tod = tod + 1
      [head | tail] = list
      [tod | tail]
    end
  end

  def has_day_without_birds?(list) do
    Enum.any?(list, fn el -> el == 0 end)
  end

  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) do
    Enum.count(list, fn el -> el >= 5 end)
  end
end
