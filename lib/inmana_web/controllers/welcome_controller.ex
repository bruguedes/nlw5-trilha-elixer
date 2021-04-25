defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  alias Inmana.Welcomer

  def index(conn, params) do
    params
    |> Welcomer.welcomer()
    |> handle_response(conn)
  end

  defp handle_response({:ok, response}, conn), do: handle_response(conn, response, :ok)

  defp handle_response({:error, response}, conn), do: handle_response(conn, response, :bad_request)

  defp handle_response(conn, response, status) do
    conn
    |>put_status(status)
    |>json(%{message: response})
  end

end
