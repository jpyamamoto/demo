defmodule DemoWeb.Components.Counter do
  use Surface.LiveComponent

  data count, :integer, default: 0
  prop label_inc, :string, default: "+"
  prop label_dec, :string, default: "-"

  def render(assigns) do
    ~F"""
    <div>
      <p class="text-4xl font-black text-gray-900 dark:text-black" id="count">{@count}</p>
      <div>
        <button
          type="button"
          class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900"
          id="dec-button"
          :on-click="dec"
        >{@label_dec}</button>
        <button
          type="button"
          class="focus:outline-none text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
          id="inc-button"
          :on-click="inc"
        >{@label_inc}</button>
      </div>
    </div>
    """
  end

  def handle_event("inc", _value, socket) do
    {:noreply, update(socket, :count, &(&1 + 1))}
  end

  def handle_event("dec", _value, socket) do
    {:noreply, update(socket, :count, &(&1 - 1))}
  end
end
