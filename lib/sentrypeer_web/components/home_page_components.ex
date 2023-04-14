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

defmodule SentrypeerWeb.HomePageComponents do
  use SentrypeerWeb, :html

  # Need to turn these into proper components like in the below module
  import SentrypeerWeb.CoreComponents

  def home_page_header(assigns) do
    ~H"""
    <header>
      <div class="relative isolate bg-white dark:bg-slate-800">
        <div class="absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80">
          <svg
            class="relative left-[calc(50%-11rem)] -z-10 h-[21.1875rem] max-w-none -translate-x-1/2 rotate-[30deg] sm:left-[calc(50%-30rem)] sm:h-[42.375rem]"
            viewBox="0 0 1155 678"
          >
            <path
              fill="url(#9b2541ea-d39d-499b-bd42-aeea3e93f5ff)"
              fill-opacity=".3"
              d="M317.219 518.975L203.852 678 0 438.341l317.219 80.634 204.172-286.402c1.307 132.337 45.083 346.658 209.733 145.248C936.936 126.058 882.053-94.234 1031.02 41.331c119.18 108.451 130.68 295.337 121.53 375.223L855 299l21.173 362.054-558.954-142.079z"
            />
            <defs>
              <linearGradient
                id="9b2541ea-d39d-499b-bd42-aeea3e93f5ff"
                x1="1155.49"
                x2="-78.208"
                y1=".177"
                y2="474.645"
                gradientUnits="userSpaceOnUse"
              >
                <stop stop-color="#9089FC" />
                <stop offset="1" stop-color="#6D50A0" />
              </linearGradient>
            </defs>
          </svg>
        </div>
        <div class="absolute inset-x-0 top-[calc(100%-13rem)] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[calc(100%-30rem)]">
          <svg
            class="relative left-[calc(50%+3rem)] h-[21.1875rem] max-w-none -translate-x-1/2 sm:left-[calc(50%+36rem)] sm:h-[42.375rem]"
            viewBox="0 0 1155 678"
          >
            <path
              fill="url(#b9e4a85f-ccd5-4151-8e84-ab55c66e5aa1)"
              fill-opacity=".3"
              d="M317.219 518.975L203.852 678 0 438.341l317.219 80.634 204.172-286.402c1.307 132.337 45.083 346.658 209.733 145.248C936.936 126.058 882.053-94.234 1031.02 41.331c119.18 108.451 130.68 295.337 121.53 375.223L855 299l21.173 362.054-558.954-142.079z"
            />
            <defs>
              <linearGradient
                id="b9e4a85f-ccd5-4151-8e84-ab55c66e5aa1"
                x1="1155.49"
                x2="-78.208"
                y1=".177"
                y2="474.645"
                gradientUnits="userSpaceOnUse"
              >
                <stop stop-color="#9089FC" />
                <stop offset="1" stop-color="#6D50A0" />
              </linearGradient>
            </defs>
          </svg>
        </div>

        <div class="mx-auto flex max-w-7xl items-center justify-between p-6 md:justify-start md:space-x-10 lg:px-8">
          <div class="flex justify-start lg:w-0 lg:flex-1">
            <a href="/" title="SentryPeer Home">
              <span class="sr-only">SentryPeer</span>
              <svg viewBox="0 0 40.302814 53.481709" class="h-12" aria-hidden="true">
                <g id="layer1" transform="translate(-53.112717,-43.907589)">
                  <g
                    id="g12"
                    transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                    style="fill:#ffffff;fill-opacity:1"
                  >
                    <path
                      d="M 0,0 H -17.647 L 0,-70.805 Z"
                      style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path14"
                    />
                  </g>
                  <g
                    id="g16"
                    transform="matrix(0.35277777,0,0,-0.35277777,65.564008,47.738649)"
                    style="fill:#6d50a0;fill-opacity:1"
                  >
                    <path
                      d="m 0,0 21.827,-79.059 v -40.398 l -11.946,53.864 -26.6,33.448 v -39.963 l 26.472,-21.285 3.25,-47.349 -48.298,38.661 v 86.009 z"
                      style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path18"
                    />
                  </g>
                  <g
                    id="g20"
                    transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                    style="fill:#6d50a0;fill-opacity:1"
                  >
                    <path
                      d="M 0,0 H 17.647 L 0,-70.805 Z"
                      style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path22"
                    />
                  </g>
                  <g
                    id="g24"
                    transform="matrix(0.35277777,0,0,-0.35277777,80.96424,47.738649)"
                    style="fill:#6d50a0;fill-opacity:1"
                  >
                    <path
                      d="m 0,0 -21.827,-79.059 v -40.398 l 11.946,53.864 26.6,33.448 v -39.963 l -26.472,-21.285 -3.25,-47.349 48.298,38.661 v 86.009 z"
                      style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                      id="path26"
                    />
                  </g>
                </g>
              </svg>
            </a>
          </div>
          <div class="-my-2 -mr-2 md:hidden">
            <button
              type="button"
              class="inline-flex items-center justify-center rounded-md bg-white p-2 text-gray-400 hover:bg-gray-100 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
              phx-click={toggle_dropdown_menu("#mobile-menu")}
              phx-click-away={JS.hide(to: "#mobile-menu")}
              aria-expanded="false"
            >
              <span class="sr-only">Open menu</span>
              <!-- Heroicon name: outline/bars-3 -->
              <svg
                class="h-6 w-6"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                stroke-width="1.5"
                stroke="currentColor"
                aria-hidden="true"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
                />
              </svg>
            </button>
          </div>
          <nav class="hidden space-x-10 md:flex">
            <a
              href="#"
              class="text-base font-medium dark:text-slate-400 dark:hover:text-slate-200 text-gray-500 hover:text-gray-900"
            >
              Pricing
            </a>
            <a
              href="#"
              class="text-base font-medium dark:text-slate-400 dark:hover:text-slate-200 text-gray-500 hover:text-gray-900"
            >
              Partners
            </a>
            <a
              href="#"
              class="text-base font-medium dark:text-slate-400 dark:hover:text-slate-200 text-gray-500 hover:text-gray-900"
            >
              Company
            </a>
          </nav>
          <div class="hidden items-center justify-end md:flex md:flex-1 lg:w-0">
            <%= if @current_user do %>
              <a
                href={~p"/dashboard"}
                title="Go to the SentryPeer Dashboard"
                class="ml-8 inline-flex items-center justify-center whitespace-nowrap rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-2 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
              >
                Dashboard
              </a>
            <% else %>
              <a
                href={~p"/login"}
                title="Login to SentryPeer"
                class="whitespace-nowrap text-base font-medium dark:text-slate-400 dark:hover:text-slate-200 text-gray-500 hover:text-gray-900 mr-4"
              >
                Sign in
              </a>
              <a
                href={~p"/signup"}
                title="Sign up for SentryPeer"
                class="ml-8 inline-flex items-center justify-center whitespace-nowrap rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-2 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
              >
                Sign up
              </a>
            <% end %>
          </div>
        </div>
        <!--
                Mobile menu, show/hide based on mobile menu state.

                Entering: "duration-200 ease-out"
                  From: "opacity-0 scale-95"
                  To: "opacity-100 scale-100"
                Leaving: "duration-100 ease-in"
                  From: "opacity-100 scale-100"
                  To: "opacity-0 scale-95"
              -->
        <div
          id="mobile-menu"
          class="absolute hidden inset-x-0 top-0 z-30 origin-top-right transform p-2 transition md:hidden"
        >
          <div class="divide-y-2 divide-gray-50 dark:divide-slate-800 rounded-lg bg-white dark:bg-slate-400 shadow-lg ring-1 ring-black ring-opacity-5">
            <div class="px-5 pt-5 pb-6">
              <div class="flex items-center justify-between">
                <div>
                  <span class="sr-only">SentryPeer</span>
                  <svg viewBox="0 0 40.302814 53.481709" class="h-12" aria-hidden="true">
                    <g id="layer1" transform="translate(-53.112717,-43.907589)">
                      <g
                        id="g12"
                        transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                        style="fill:#ffffff;fill-opacity:1"
                      >
                        <path
                          d="M 0,0 H -17.647 L 0,-70.805 Z"
                          style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                          id="path14"
                        />
                      </g>
                      <g
                        id="g16"
                        transform="matrix(0.35277777,0,0,-0.35277777,65.564008,47.738649)"
                        style="fill:#6d50a0;fill-opacity:1"
                      >
                        <path
                          d="m 0,0 21.827,-79.059 v -40.398 l -11.946,53.864 -26.6,33.448 v -39.963 l 26.472,-21.285 3.25,-47.349 -48.298,38.661 v 86.009 z"
                          style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                          id="path18"
                        />
                      </g>
                      <g
                        id="g20"
                        transform="matrix(0.35277777,0,0,-0.35277777,73.26413,43.907589)"
                        style="fill:#6d50a0;fill-opacity:1"
                      >
                        <path
                          d="M 0,0 H 17.647 L 0,-70.805 Z"
                          style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                          id="path22"
                        />
                      </g>
                      <g
                        id="g24"
                        transform="matrix(0.35277777,0,0,-0.35277777,80.96424,47.738649)"
                        style="fill:#6d50a0;fill-opacity:1"
                      >
                        <path
                          d="m 0,0 -21.827,-79.059 v -40.398 l 11.946,53.864 26.6,33.448 v -39.963 l -26.472,-21.285 -3.25,-47.349 48.298,38.661 v 86.009 z"
                          style="fill:#6d50a0;fill-opacity:1;fill-rule:nonzero;stroke:none"
                          id="path26"
                        />
                      </g>
                    </g>
                  </svg>
                </div>
                <div class="-mr-2">
                  <button
                    type="button"
                    phx-click={toggle_dropdown_menu("#mobile-menu")}
                    phx-click-away={JS.hide(to: "#mobile-menu")}
                    class="inline-flex items-center justify-center rounded-md bg-white p-2 text-gray-400
                                    hover:bg-gray-100 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-inset
                                    focus:ring-indigo-500"
                  >
                    <span class="sr-only">Close menu</span>
                    <!-- Heroicon name: outline/x-mark -->
                    <svg
                      class="h-6 w-6"
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke-width="1.5"
                      stroke="currentColor"
                      aria-hidden="true"
                    >
                      <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>
                </div>
              </div>
            </div>
            <div class="py-6 px-5">
              <div class="grid grid-cols-1 gap-4">
                <a href="#" class="text-base font-medium text-gray-900 hover:text-gray-700">
                  Pricing
                </a>
                <a href="#" class="text-base font-medium text-gray-900 hover:text-gray-700">
                  Partners
                </a>
                <a href="#" class="text-base font-medium text-gray-900 hover:text-gray-700">
                  Company
                </a>
              </div>
              <%= if @current_user do %>
                <div class="mt-6">
                  <a
                    href={~p"/dashboard"}
                    title="Go to the SentryPeer Dashboard"
                    class="inline-flex items-center justify-center whitespace-nowrap rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-2 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
                  >
                    Dashboard
                  </a>
                </div>
              <% else %>
                <div class="mt-6">
                  <a
                    href={~p"/login"}
                    title="Login to SentryPeer"
                    class="inline-flex items-center justify-center whitespace-nowrap rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-2 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
                  >
                    Sign in
                  </a>
                </div>
                <div class="mt-6">
                  <a
                    href={~p"/signup"}
                    title="Sign up for SentryPeer"
                    class="inline-flex items-center justify-center whitespace-nowrap rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-2 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
                  >
                    Sign up
                  </a>
                </div>
              <% end %>
            </div>
          </div>
        </div>
      </div>
    </header>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer class="bg-gray-50 dark:bg-slate-600" aria-labelledby="footer-heading">
      <h2 id="footer-heading" class="sr-only">Footer</h2>
      <div class="mx-auto max-w-7xl px-6 pt-16 pb-8 lg:px-8 lg:pt-24">
        <div class="xl:grid xl:grid-cols-3 xl:gap-8">
          <div class="grid grid-cols-2 gap-8 xl:col-span-2">
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-base font-medium text-gray-900 dark:text-white">Sectors</h3>
                <ul role="list" class="mt-4 space-y-4">
                  <li>
                    <a
                      href="#"
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                      title="Internet Telephony Service Providers"
                    >
                      ITSPs
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Cybersecurity
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Telecom Resellers
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Network Operators
                    </a>
                  </li>
                </ul>
              </div>
              <div class="mt-12 md:mt-0">
                <h3 class="text-base font-medium text-gray-900 dark:text-white">Support</h3>
                <ul role="list" class="mt-4 space-y-4">
                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Pricing
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Documentation
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Guides
                    </a>
                  </li>

                  <li>
                    <a
                      href="https://status.sentrypeer.com/"
                      title="SentryPeer Service Status Page"
                      target="_blank"
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                    >
                      Service
                      Status
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="md:grid md:grid-cols-2 md:gap-8">
              <div>
                <h3 class="text-base font-medium text-gray-900 dark:text-white">Company</h3>
                <ul role="list" class="mt-4 space-y-4">
                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      About
                    </a>
                  </li>

                  <li>
                    <a
                      href={~p"/contact"}
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                      title="See the various ways to contact SentryPeer"
                    >
                      Contact
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Jobs
                    </a>
                  </li>

                  <li>
                    <a href="#" class="text-base text-gray-500 dark:text-black hover:text-gray-900">
                      Partners
                    </a>
                  </li>
                </ul>
              </div>
              <div class="mt-12 md:mt-0">
                <h3 class="text-base font-medium text-gray-900 dark:text-white">Legal</h3>
                <ul role="list" class="mt-4 space-y-4">
                  <li>
                    <a
                      href={~p"/privacy-policy"}
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                    >
                      Privacy Policy
                    </a>
                  </li>

                  <li>
                    <a
                      href={~p"/terms-and-conditions"}
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                    >
                      Terms & Conditions
                    </a>
                  </li>

                  <li>
                    <a
                      href={~p"/acceptable-use-policy"}
                      class="text-base text-gray-500 dark:text-black hover:text-gray-900"
                    >
                      Acceptable Use Policy
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="mt-12 xl:mt-0">
            <h3 class="text-base font-medium text-gray-900 dark:text-white">
              Subscribe to our newsletter
            </h3>
            <p class="mt-4 text-base text-gray-500 dark:text-black">
              The latest news, articles, and resources, sent to your inbox weekly.
            </p>
            <form class="mt-4 sm:flex sm:max-w-md">
              <label for="email-address" class="sr-only">Email address</label>
              <input
                type="email"
                name="email-address"
                id="email-address"
                autocomplete="email"
                required
                class="w-full min-w-0 appearance-none rounded-md border border-gray-300 bg-white py-2 px-4 text-base text-gray-900 placeholder-gray-500 shadow-sm focus:border-indigo-500 focus:placeholder-gray-400 focus:outline-none focus:ring-indigo-500"
                placeholder="Enter your email"
              />
              <div class="mt-3 rounded-md sm:mt-0 sm:ml-3 sm:flex-shrink-0">
                <button
                  type="submit"
                  class="flex w-full items-center justify-center rounded-md border border-transparent bg-gradient-to-r from-brand to-indigo-600 bg-origin-border px-4 py-3 text-base font-medium text-white shadow-sm hover:from-brand hover:to-indigo-700"
                >
                  Subscribe
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="mt-12 border-t border-gray-200 pt-8 md:flex md:items-center md:justify-between lg:mt-16">
          <div class="flex space-x-6 md:order-2">
            <a
              href="https://twitter.com/SentryPeer"
              title="SentryPeer on Twitter"
              target="_blank"
              class="text-gray-400 hover:text-gray-500"
            >
              <span class="sr-only">Twitter</span>
              <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" />
              </svg>
            </a>

            <a
              href="https://github.com/SentryPeer"
              title="SentryPeer on GitHub"
              target="_blank"
              class="text-gray-400 hover:text-gray-500"
            >
              <span class="sr-only">GitHub</span>
              <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                <path
                  fill-rule="evenodd"
                  d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                  clip-rule="evenodd"
                />
              </svg>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6"
                fill="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  d="M27.255 80.719c0 7.33-5.978 13.317-13.309 13.317C6.616 94.036.63 88.049.63 80.719s5.987-13.317 13.317-13.317h13.309zm6.709 0c0-7.33 5.987-13.317 13.317-13.317s13.317 5.986 13.317 13.317v33.335c0 7.33-5.986 13.317-13.317 13.317-7.33 0-13.317-5.987-13.317-13.317zm0 0"
                  fill="#de1c59"
                /><path
                  d="M47.281 27.255c-7.33 0-13.317-5.978-13.317-13.309C33.964 6.616 39.951.63 47.281.63s13.317 5.987 13.317 13.317v13.309zm0 6.709c7.33 0 13.317 5.987 13.317 13.317s-5.986 13.317-13.317 13.317H13.946C6.616 60.598.63 54.612.63 47.281c0-7.33 5.987-13.317 13.317-13.317zm0 0"
                  fill="#35c5f0"
                /><path
                  d="M100.745 47.281c0-7.33 5.978-13.317 13.309-13.317 7.33 0 13.317 5.987 13.317 13.317s-5.987 13.317-13.317 13.317h-13.309zm-6.709 0c0 7.33-5.987 13.317-13.317 13.317s-13.317-5.986-13.317-13.317V13.946C67.402 6.616 73.388.63 80.719.63c7.33 0 13.317 5.987 13.317 13.317zm0 0"
                  fill="#2eb57d"
                /><path
                  d="M80.719 100.745c7.33 0 13.317 5.978 13.317 13.309 0 7.33-5.987 13.317-13.317 13.317s-13.317-5.987-13.317-13.317v-13.309zm0-6.709c-7.33 0-13.317-5.987-13.317-13.317s5.986-13.317 13.317-13.317h33.335c7.33 0 13.317 5.986 13.317 13.317 0 7.33-5.987 13.317-13.317 13.317zm0 0"
                  fill="#ebb02e"
                />
              </svg>
            </a>

            <a
              href="https://join.slack.com/t/sentrypeer/shared_invite/zt-zxsmfdo7-iE0odNT2XyKLP9pt0lgbcw"
              title="SentryPeer Slack Community"
              target="_blank"
              class="text-gray-400 hover:text-gray-500"
            >
              <span class="sr-only">Slack</span>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-6 w-6 mt-0.5"
                fill="currentColor"
                viewBox="0 0 156 156"
                aria-hidden="true"
              >
                <path
                  fill-rule="evenodd"
                  d="M27.255 80.719c0 7.33-5.978 13.317-13.309 13.317C6.616 94.036.63 88.049.63 80.719s5.987-13.317 13.317-13.317h13.309zm6.709 0c0-7.33 5.987-13.317 13.317-13.317s13.317 5.986 13.317 13.317v33.335c0 7.33-5.986 13.317-13.317 13.317-7.33 0-13.317-5.987-13.317-13.317zm0 0"
                /><path d="M47.281 27.255c-7.33 0-13.317-5.978-13.317-13.309C33.964 6.616 39.951.63 47.281.63s13.317 5.987 13.317 13.317v13.309zm0 6.709c7.33 0 13.317 5.987 13.317 13.317s-5.986 13.317-13.317 13.317H13.946C6.616 60.598.63 54.612.63 47.281c0-7.33 5.987-13.317 13.317-13.317zm0 0" /><path d="M100.745 47.281c0-7.33 5.978-13.317 13.309-13.317 7.33 0 13.317 5.987 13.317 13.317s-5.987 13.317-13.317 13.317h-13.309zm-6.709 0c0 7.33-5.987 13.317-13.317 13.317s-13.317-5.986-13.317-13.317V13.946C67.402 6.616 73.388.63 80.719.63c7.33 0 13.317 5.987 13.317 13.317zm0 0" /><path
                  d="M80.719 100.745c7.33 0 13.317 5.978 13.317 13.309 0 7.33-5.987 13.317-13.317 13.317s-13.317-5.987-13.317-13.317v-13.309zm0-6.709c-7.33 0-13.317-5.987-13.317-13.317s5.986-13.317 13.317-13.317h33.335c7.33 0 13.317 5.986 13.317 13.317 0 7.33-5.987 13.317-13.317 13.317zm0 0"
                  clip-rule="evenodd"
                />
              </svg>
            </a>
          </div>
          <p class="mt-8 text-sm text-gray-400 dark:text-black md:order-1 md:mt-0">
            ©
            <a href="https://antnetworks.com/" title="Ant Networks Limited" target="_blank">
              Ant Networks Ltd.
            </a>
            <%= DateTime.utc_now().year %>. SentryPeer is a trading name of
            <a href="https://antnetworks.com/" title="Ant Networks Limited" target="_blank">
              Ant Networks Ltd.
            </a>
            The
            <a
              href="https://trademarks.ipo.gov.uk/ipo-tmcase/page/Results/1/UK00003847726"
              title="The SentryPeer icon is a registered trademark"
              target="_blank"
            >
              SentryPeer Icon
            </a>
            and the
            <a
              href="https://trademarks.ipo.gov.uk/ipo-tmcase/page/Results/1/UK00003700947"
              title="SentryPeer is a registered trademark"
              target="_blank"
            >
              SentryPeer name
            </a>
            are registered trademarks of
            <a href="https://ghenry.co.uk/about/" title="About Gavin Henry" target="_blank">
              Gavin Henry.
            </a>
            All rights reserved.
          </p>
        </div>
      </div>
    </footer>
    """
  end
end
