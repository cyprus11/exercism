defmodule GuessingGame do
  def compare(_secret_sumber), do: "Make a guess"
  def compare(_secret_sumber, guess) when is_atom(guess), do: "Make a guess"
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
  def compare(secret_number, guess) when guess - secret_number > 1, do: "Too high"
  def compare(secret_number, guess) when secret_number - guess > 1, do: "Too low"
  def compare(secret_number, guess) when secret_number - guess == 1 or guess - secret_number == 1, do: "So close"
end
