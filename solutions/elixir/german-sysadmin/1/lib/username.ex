defmodule Username do
  def sanitize(username) do
    Enum.flat_map(username, fn
    228 -> 'ae'
    246 -> 'oe'
    252 -> 'ue'
    223 -> 'ss'
    char -> [char]
    end)
    |> Enum.filter(fn char -> char > 94 && char < 123 && char != 96 end)
  end
end
