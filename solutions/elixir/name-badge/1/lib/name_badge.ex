defmodule NameBadge do
  def print(id, name, department) when not is_nil(id) and not is_nil(name) and not is_nil(department),
    do: "[#{id}] - #{name} - #{String.upcase(department)}"
    
  def print(id, name, department) when is_nil(id) and not is_nil(name) and not is_nil(department),
    do: "#{name} - #{String.upcase(department)}"
    
  def print(id, name, department) when not is_nil(id) and not is_nil(name) and is_nil(department),
    do: "[#{id}] - #{name} - OWNER"
    
  def print(id, name, department) when is_nil(id) and not is_nil(name) and is_nil(department),
    do: "#{name} - OWNER"
end