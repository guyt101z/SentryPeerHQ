defmodule SentrypeerWeb.CustomerDashboardLive.Index do
  use SentrypeerWeb, :live_view

  @impl true
  def mount(_params, session, socket) do
    {:ok,
     assign(socket,
       current_time: time(),
       # .avatar is in there too
       current_user: session["current_user"],
       app_version: Application.spec(:sentrypeer, :vsn),
       page_title: "Dashboard"
     )}
  end

  defp time() do
    # DateTime.utc_now |> to_string
    Calendar.strftime(DateTime.utc_now(), "%y-%m-%d %I:%M:%S %p")
  end
end
