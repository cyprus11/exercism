defmodule Username do
  def sanitize(username) do
    Enum.flat_map(username, fn
    228 -> ~c"ae"
    246 -> ~c"oe"
    252 -> ~c"ue"
    223 -> ~c"ss"
    char -> [char]
    end)
    |> Enum.filter(fn char -> char > 94 && char < 123 && char != 96 end)
  end
end
