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

defmodule SentrypeerWeb.HomeLive.Index do
  use SentrypeerWeb, :live_view

  import SentrypeerWeb.HomePageComponents
  alias Sentrypeer.Newsletter

  @impl true
  def mount(_params, session, socket) do
    {:ok,
     assign(socket,
       current_user: session["current_user"],
       page_title: "SentryPeer® - Help prevent VoIP cyberattacks and fraudulent VoIP phone calls",
       show_newsletter_subscription: true,
       live_action: :index
     )}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  @impl true
  def handle_event("subscribe", %{"email" => email_address}, socket) do
    subscribe(socket, socket.assigns.live_action, email_address)
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:email, nil)
  end

  defp subscribe(socket, :index, email_address) do
    Newsletter.subscribe(email_address)

    {:noreply,
     socket
     |> put_flash(:info, "Subscribe request received. Thank you!")}
  end
end