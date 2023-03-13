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

defmodule SentrypeerWeb.NavigationComponents do
  use SentrypeerWeb, :html

  import SentrypeerWeb.CoreComponents

  def nav_top_menu(assigns) do
    ~H"""
    <nav class="flex-shrink-0 bg-gradient-to-r from-brand to-indigo-600">
      <div class="mx-auto max-w-7xl px-2 sm:px-4 lg:px-8">
        <div class="relative flex h-16 items-center justify-between">
          <!-- Logo section -->
          <div class="flex items-center px-2 lg:px-0 xl:w-64">
            <div class="flex-shrink-0">
              <svg viewBox="0 0 40.302814 53.481709" class="h-12" aria-hidden="true">
                <g id="layer1" transform="translate(-53.112717,-43.907589)">
                  <g
                    id="g12"
                    transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                    style="fill:#ffffff;fill-opacity:1"
                  >
                    <path
                      d="M 0,0 H -17.647 L 0,-70.805 Z"
                      style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path14"
                    />
                  </g>
                  <g
                    id="g16"
                    transform="matrix(0.35277777,0,0,-0.35277777,65.564008,47.738649)"
                    style="fill:#ffffff;fill-opacity:1"
                  >
                    <path
                      d="m 0,0 21.827,-79.059 v -40.398 l -11.946,53.864 -26.6,33.448 v -39.963 l 26.472,-21.285 3.25,-47.349 -48.298,38.661 v 86.009 z"
                      style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path18"
                    />
                  </g>
                  <g
                    id="g20"
                    transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                    style="fill:#ffffff;fill-opacity:1"
                  >
                    <path
                      d="M 0,0 H 17.647 L 0,-70.805 Z"
                      style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path22"
                    />
                  </g>
                  <g
                    id="g24"
                    transform="matrix(0.35277777,0,0,-0.35277777,80.96424,47.738649)"
                    style="fill:#ffffff;fill-opacity:1"
                  >
                    <path
                      d="m 0,0 -21.827,-79.059 v -40.398 l 11.946,53.864 26.6,33.448 v -39.963 l -26.472,-21.285 -3.25,-47.349 48.298,38.661 v 86.009 z"
                      style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path26"
                    />
                  </g>
                </g>
              </svg>
            </div>
          </div>
          <!-- Search section -->
          <div class="flex flex-1 justify-center lg:justify-end">
            <div class="w-full px-2 lg:px-6">
              <label for="search" class="sr-only">Search nodes</label>
              <div class="relative text-indigo-200 focus-within:text-gray-400">
                <div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                  <!-- Heroicon name: mini/magnifying-glass -->
                  <svg
                    class="h-5 w-5"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                    aria-hidden="true"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M9 3.5a5.5 5.5 0 100 11 5.5 5.5 0 000-11zM2 9a7 7 0 1112.452 4.391l3.328 3.329a.75.75 0 11-1.06 1.06l-3.329-3.328A7 7 0 012 9z"
                      clip-rule="evenodd"
                    />
                  </svg>
                </div>
                <input
                  id="search"
                  name="search"
                  class="block w-full rounded-md border border-transparent bg-indigo-400 bg-opacity-25 py-2 pl-10 pr-3 leading-5 text-indigo-100 placeholder-indigo-200 focus:bg-white focus:text-gray-900 focus:placeholder-gray-400 focus:outline-none focus:ring-0 sm:text-sm"
                  placeholder="Search nodes"
                  type="search"
                />
              </div>
            </div>
          </div>
          <div class="flex lg:hidden">
            <!-- Mobile menu button -->
            <button
              type="button"
              class="inline-flex items-center justify-center rounded-md bg-indigo-600 p-2 text-indigo-400 hover:bg-indigo-600 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-indigo-600"
              aria-controls="mobile-menu"
              aria-expanded="false"
              phx-click={
                toggle_dropdown_menu("#mobile-menu")
                |> JS.toggle(to: "#mobile-menu-open")
                |> JS.toggle(to: "#mobile-menu-close")
              }
              phx-click-away={
                JS.hide(to: "#mobile-menu")
                |> JS.hide(to: "#mobile-menu-close")
                |> JS.show(to: "#mobile-menu-open")
              }
            >
              <span class="sr-only">Open main menu</span>
              <!--
                          Icon when menu is closed.

                          Heroicon name: outline/bars-3-center-left

                          Menu open: "hidden", Menu closed: "block"
                        -->
              <svg
                class="block h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
                aria-hidden="true"
                id="mobile-menu-open"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3.75 6.75h16.5M3.75 12H12m-8.25 5.25h16.5"
                />
              </svg>
              <!--
                          Icon when menu is open.

                          Heroicon name: outline/x-mark

                          Menu open: "block", Menu closed: "hidden"
                        -->
              <svg
                class="hidden h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
                aria-hidden="true"
                id="mobile-menu-close"
              >
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
          <!-- Links section -->
          <div class="hidden lg:block lg:w-80">
            <div class="flex items-center justify-end">
              <div class="flex">
                <a
                  href="#"
                  title="SentryPeer Documentation"
                  class="rounded-md px-3 py-2 text-sm font-medium text-indigo-200 hover:text-white"
                >
                  Documentation
                </a>
                <a
                  href="#"
                  title="SentryPeer Support"
                  class="rounded-md px-3 py-2 text-sm font-medium text-indigo-200 hover:text-white"
                >
                  Support
                </a>
              </div>
              <!-- Profile dropdown -->
              <div class="relative ml-4 flex-shrink-0">
                <div>
                  <button
                    type="button"
                    class="flex rounded-full bg-indigo-700 text-sm text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-indigo-700"
                    id="user-menu-button"
                    aria-expanded="false"
                    aria-haspopup="true"
                    phx-click={toggle_dropdown_menu("#user-menu")}
                    phx-click-away={JS.hide(to: "#user-menu")}
                  >
                    <span class="sr-only">Open user menu</span>
                    <img
                      class="h-8 w-8 rounded-full"
                      src={@current_user.avatar}
                      alt={ @current_user.name <> "'s avatar" }
                      title={ @current_user.name <> "'s avatar" }
                    />
                  </button>
                </div>
                <!--
                                  Dropdown menu, show/hide based on menu state.

                                  Entering: "transition ease-out duration-100"
                                    From: "transform opacity-0 scale-95"
                                    To: "transform opacity-100 scale-100"
                                  Leaving: "transition ease-in duration-75"
                                    From: "transform opacity-100 scale-100"
                                    To: "transform opacity-0 scale-95"
                                -->
                <div
                  class="absolute hidden right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
                  role="menu"
                  aria-orientation="vertical"
                  aria-labelledby="user-menu-button"
                  id="user-menu"
                  tabindex="-1"
                >
                  <!-- Active: "bg-gray-100", Not Active: "" -->
                  <a
                    href="#"
                    title="View your profile"
                    class="block px-4 py-2 text-sm text-gray-700"
                    role="menuitem"
                    tabindex="-1"
                    id="user-menu-item-0"
                  >
                    View Profile
                  </a>
                  <a
                    href="#"
                    title="Change your settings"
                    class="block px-4 py-2 text-sm text-gray-700"
                    role="menuitem"
                    tabindex="-1"
                    id="user-menu-item-1"
                  >
                    Settings
                  </a>
                  <a
                    href="#"
                    title="Logout from SentryPeer"
                    class="block px-4 py-2 text-sm text-gray-700"
                    role="menuitem"
                    tabindex="-1"
                    id="user-menu-item-2"
                    phx-click={show_modal("confirm_logout")}
                  >
                    Logout
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Logout confirmation modal -->
      <.confirm_modal
        id="confirm_logout"
        on_confirm={JS.navigate(~p"/logout")}
        on_cancel={JS.hide(to: "#confirm_logout")}
      >
        <:title>Logout</:title>
        Are you sure you?
        <:confirm>Logout</:confirm>
        <:cancel>Cancel</:cancel>
      </.confirm_modal>
      <!-- Mobile menu, show/hide based on menu state. -->
      <div class="hidden" id="mobile-menu">
        <div class="space-y-1 px-2 pt-2 pb-3">
          <a
            href="#"
            class="text-white bg-indigo-800 block px-3 py-2 rounded-md text-base font-medium"
            aria-current="page"
          >
            Documentation
          </a>
          <a
            href="#"
            class="text-indigo-200 hover:text-indigo-100 hover:bg-indigo-600 block px-3 py-2 rounded-md text-base font-medium"
          >
            Support
          </a>
        </div>
        <div class="border-t border-indigo-800 pt-4 pb-3">
          <div class="space-y-1 px-2">
            <a
              href="#"
              class="block rounded-md px-3 py-2 text-base font-medium text-indigo-200 hover:bg-indigo-600 hover:text-indigo-100"
            >
              Your Profile
            </a>
            <a
              href="#"
              class="mt-1 block rounded-md px-3 py-2 text-base font-medium text-indigo-200 hover:bg-indigo-600 hover:text-indigo-100"
            >
              Settings
            </a>
            <.link
              href="#"
              phx-click={show_modal("confirm_logout")}
              class="mt-1 block rounded-md px-3 py-2 text-base font-medium text-indigo-200 hover:bg-indigo-600
                    hover:text-indigo-100"
            >
              Logout
            </.link>
          </div>
        </div>
      </div>
    </nav>
    """
  end
end