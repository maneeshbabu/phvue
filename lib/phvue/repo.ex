defmodule Phvue.Repo do
  use Ecto.Repo,
    otp_app: :phvue,
    adapter: Ecto.Adapters.Postgres
end
