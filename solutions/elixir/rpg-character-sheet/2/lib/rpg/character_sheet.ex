defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    trim_input(IO.gets("What is your character's name?\n"))
  end

  def ask_class() do
    trim_input(IO.gets("What is your character's class?\n"))
  end

  def ask_level() do
    String.to_integer(trim_input(IO.gets("What is your character's level?\n")))
  end

  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    gamer_map = %{name: name, class: class, level: level}
    IO.puts("\nYour character: " <> inspect(gamer_map))
    gamer_map
  end

  defp trim_input(str) do
    String.trim(str)
  end
end
