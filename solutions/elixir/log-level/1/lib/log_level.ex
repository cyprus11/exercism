defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and !legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and !legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    to_label_res = to_label(level, legacy?)
    cond do
      Enum.member?([:error, :fatal], to_label_res) -> :ops
      to_label_res == :unknown && legacy? -> :dev1
      to_label_res == :unknown && !legacy? -> :dev2
      true -> false
    end
  end
end
