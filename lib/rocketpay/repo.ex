defmodule Rocketpay.Repo do
  use Ecto.Repo,
    otp_app: :rocketpay,
    adapter: Ecto.Adapters.Postgres

  alias Rocketpay.Repo.{Create}

  defdelegate create(table, params), to: Create, as: :call
end
