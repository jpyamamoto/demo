defmodule DemoWeb.Components.CounterTest do
  use DemoWeb.ConnCase, async: true
  use Surface.LiveViewTest
  import LiveIsolatedComponent

  alias DemoWeb.Components.Counter

  describe "Counter Test" do
    # This test fails due to missing assigns, even though they have default values.
    test "click + button" do
      {:ok, view, _html} = live_isolated_component(Counter)
      assert has_element?(view, "#count", "0")

      view
      |> element("button#inc-button")
      |> render_click()

      assert has_element?(view, "#count", "1")
    end

    # This test works fine
    test "click - button" do
      {:ok, view, _html} =
        live_isolated_component(Counter, assigns: %{label_inc: "+", label_dec: "-"})

      assert has_element?(view, "#count", "0")

      view
      |> element("button#dec-button")
      |> render_click()

      assert has_element?(view, "#count", "-1")
    end
  end
end
