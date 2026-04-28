defmodule BirdCount do
  def today(list) do
    case list do
      [] -> nil
      [head | _tail] -> head
    end
  end

  def increment_day_count(list) do
    case list do
      [] -> [1]
      [head | tail] -> [head + 1 | tail]
    end
  end

  def has_day_without_birds?(list) do
    has_day_without_birds?(list, false)
  end
  
  defp has_day_without_birds?([], found) do
    found
  end
  
  defp has_day_without_birds?([head | tail], found) do
    if head == 0 do
      has_day_without_birds?(tail, true)
    else
      has_day_without_birds?(tail, found)
    end
  end

  def total(list) do
    total(list, 0)
  end
  
  defp total([], accumulator) do
    accumulator
  end
  
  defp total([head | tail], accumulator) do
    total(tail, accumulator + head)
  end

  def busy_days(list) do
    busy_days(list, 0)
  end
  
  defp busy_days([], count) do
    count
  end
  
  defp busy_days([head | tail], count) do
    if head >= 5 do
      busy_days(tail, count + 1)
    else
      busy_days(tail, count)
    end
  end
end