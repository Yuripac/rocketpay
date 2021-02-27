defmodule Rocketpay.Repo.Create do
  alias Rocketpay.Repo

  def call(table, params) do
    table
    |> table_changeset(params)
    |> Repo.insert
  end

  defp table_changeset(table, params) do
    table
    |> table_module
    |> apply(:changeset, [params])
  end

  defp table_module(table) do
    table
    |> Atom.to_string
    |> String.capitalize
    |> table_module_str
    |> String.to_existing_atom
  end

  defp table_module_str(table) do
    "Elixir.Rocketpay.#{table}"
  end
end
