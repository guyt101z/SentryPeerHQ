# SPDX-License-Identifier: AGPL-3.0
# Copyright (c) 2023 Gavin Henry <ghenry@sentrypeer.org>
#
#   _____            _              _____
#  / ____|          | |            |  __ \
# | (___   ___ _ __ | |_ _ __ _   _| |__) |__  ___ _ __
#  \___ \ / _ \ '_ \| __| '__| | | |  ___/ _ \/ _ \ '__|
#  ____) |  __/ | | | |_| |  | |_| | |  |  __/  __/ |
# |_____/ \___|_| |_|\__|_|   \__, |_|   \___|\___|_|
#                              __/ |
#                             |___/
#

defmodule SentrypeerWeb.CustomerDashboardLive.Index do
  use SentrypeerWeb, :live_view

  @impl true
  def mount(_params, session, socket) do
    {:ok,
     assign(socket,
       current_time: time(),
       # .avatar is in there too
       current_user: session["current_user"],
       no_nodes: true,
       app_version: Application.spec(:sentrypeer, :vsn),
       page_title: "Dashboard"
     )}
  end

  defp time() do
    # DateTime.utc_now |> to_string
    Calendar.strftime(DateTime.utc_now(), "%y-%m-%d %I:%M:%S %p")
  end
end
