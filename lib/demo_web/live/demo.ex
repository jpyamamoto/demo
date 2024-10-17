defmodule DemoWeb.Demo do
  use DemoWeb, :surface_live_view

  alias DemoWeb.Components.Counter
  alias DemoWeb.Components.Card

  def render(assigns) do
    ~F"""
    <style>
      .tag {
      @apply bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2;
      }
    </style>

    <div class="flex justify-center mt-12">
      <Card max_width="lg" rounded>
        <:header>
          Counter
        </:header>

        This counter is a Surface LiveComponent:

        <Counter id="counter" />

        <:footer>
          <span class="tag">#surface</span>
          <span class="tag">#phoenix</span>
          <span class="tag">#tailwindcss</span>
        </:footer>
      </Card>
    </div>
    """
  end
end
