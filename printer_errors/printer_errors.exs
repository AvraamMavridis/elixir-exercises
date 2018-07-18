defmodule Printererror do

  def printer_error(s) do
    chars = String.split(s, "", trim: true)
    errors = Enum.count(Enum.filter(chars, fn(x) -> !Regex.match?(~r/[a-m]/, x) end))
    "#{errors}/#{Enum.count(chars)}"
  end
  
end
