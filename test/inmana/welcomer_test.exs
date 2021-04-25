defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user in special, retuns a special message" do
      params = %{"name" => "bruno", "age" => "36"}

      assert Welcomer.welcomer(params) == {:ok, "You are very special"}
    end

    test "when the user not special, retuns a normal message" do
      params = %{"name" => "Usuario", "age" => "55"}

      assert Welcomer.welcomer(params) == {:ok, "Welcome usuario"}
    end

    test "when the user not special end age < 18, retuns message" do
      params = %{"name" => "Usuario", "age" => "17"}

      assert Welcomer.welcomer(params) == {:error, "You shall not pass usuario"}
    end
  end
end
