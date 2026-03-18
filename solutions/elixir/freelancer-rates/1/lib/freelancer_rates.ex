defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    per_month = daily_rate(hourly_rate) * 22
    trunc(Float.ceil(apply_discount(per_month, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    hour_with_discount = apply_discount(hourly_rate, discount)
    Float.floor(budget / daily_rate(hour_with_discount), 1)
  end
end
