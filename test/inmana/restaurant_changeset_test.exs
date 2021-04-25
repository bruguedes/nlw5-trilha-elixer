defmodule Inmana.Restaurants.InputsVerification.ChangesetTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurants.InputsVerification.Changeset

  describe "changeset/1" do
    test "Whe all params are valid, retuns a valid changeset" do
      params = %{name: "Café da Telma", email: "telma@email.com"}
      result_function = Changeset.changeset(params)

      assert %Ecto.Changeset{
               changes: %{email: "telma@email.com", name: "Café da Telma"},
               valid?: true
             } = result_function
    end

    test "Whe there params are invalid, retuns an invalid changeset" do
      params = %{name: "CT", email: ""}
      result_function = Changeset.changeset(params)

      assert %Ecto.Changeset{valid?: false} = result_function
      assert errors_on(result_function) == %{email: ["can't be blank"]}
    end
  end
end
