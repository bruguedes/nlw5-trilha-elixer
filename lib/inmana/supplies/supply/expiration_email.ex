defmodule Inmana.Supplies.Supply.ExpirationEmail do
  import Bamboo.Email

  def create(email, supplies) do
    new_email(
      to: email,
      from: "app@inmana.com",
      subject: "Supplies that are abount to expire",
      text_body: email_text(supplies)
    )
  end

  defp email_text(map) do
    inicial_text = "-----Supplies that are abount to expire-----"
    Enum.reduce(map, inicial_text, fn item, text -> text <> supply_string(item) end)
  end

  defp supply_string(item) do
    %{descripion: descripition, expiration_date: expiration_date, responsible: responsible} = item

    "Description: #{descripition}, Expiretion Date: #{expiration_date},
     Responsible: #{responsible}\n"
  end
end
