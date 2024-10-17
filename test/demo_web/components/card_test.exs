defmodule DemoWeb.Components.CardTest do
  use DemoWeb.ConnCase, async: true
  use Surface.LiveViewTest

  catalogue_test DemoWeb.Components.Card
end
