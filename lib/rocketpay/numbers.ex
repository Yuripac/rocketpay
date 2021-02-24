defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    {
      :ok,
      result
      |> String.split(",")
      |> Enum.map(fn n -> String.to_integer(n) end)
      |> Enum.sum()
    }
  end

  defp handle_file({:error, _err}), do: {:error, "Invalid file"}
end
