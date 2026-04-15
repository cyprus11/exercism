defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name) |> String.at(0)
  end

  def initial(name) do
    "#{first_letter(String.upcase(name))}."
  end

  def initials(full_name) do
    [first_name, last_name] = String.trim(full_name) 
                              |> String.split(" ")

    "#{initial(String.upcase(first_name))} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤
    str = "❤-------------------❤"
    "#{str}\n|  #{initials(full_name1)}  +  #{initials(full_name2)}  |\n#{str}\n"
  end
end
