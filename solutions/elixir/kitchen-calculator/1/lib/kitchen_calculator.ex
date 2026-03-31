defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    volume_type = elem(volume_pair, 0)
    volume_value = get_volume(volume_pair)
    cond do
      volume_type == :milliliter -> {:milliliter, volume_value}
      volume_type == :cup -> {:milliliter, volume_value * 240}
      volume_type == :fluid_ounce -> {:milliliter, volume_value * 30}
      volume_type == :teaspoon -> {:milliliter, volume_value * 5}
      volume_type == :tablespoon -> {:milliliter, volume_value * 15}
    end
  end

  def from_milliliter(volume_pair, unit) do
    {:milliliter, value} = volume_pair
    cond do
      unit == :milliliter -> {unit, value}
      unit == :cup -> {unit, value / 240}
      unit == :fluid_ounce -> {unit, value / 30}
      unit == :teaspoon -> {unit, value / 5}
      unit == :tablespoon -> {unit, value / 15}
    end
  end

  def convert(volume_pair, unit) do
    to_mll = to_milliliter(volume_pair)
    from_milliliter(to_mll, unit)
  end
end
