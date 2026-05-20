defmodule NameBadge do
  def print(id, name, department) do
    if not is_nil(id) and not is_nil(name) and not is_nil(department) do
      "[#{id}] - #{name} - #{String.upcase(department)}"
    else
      if is_nil(id) and not is_nil(name) and not is_nil(department) do
        "#{name} - #{String.upcase(department)}"
      else
        if not is_nil(id) and not is_nil(name) and is_nil(department) do
          "[#{id}] - #{name} - OWNER"
        else
          "#{name} - OWNER"
        end
      end
    end
  end
end