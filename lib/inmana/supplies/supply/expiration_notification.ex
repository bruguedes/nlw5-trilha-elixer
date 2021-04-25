defmodule Inmana.Supplies.Supply.ExpirationNotification do
  alias Inmana.Mailer
  alias Inmana.Supplies.Supply.GetByExpiration
  alias Inmana.Supplies.Supply.ExpirationEmail

  def send do
    data = GetByExpiration.call()

    Task.async_stream(data, fn {key, value} -> send_email(key, value) end)
    |> Stream.run()
  end

  defp send_email(key, value) do
    key
    |> ExpirationEmail.create(value)
    |> Mailer.deliver_now!()
  end
end
