defmodule ColoursWeb.ColoursView do
  use ColoursWeb, :view

  def render("rgb_to_hsl.json", params) do
    Map.take(params.conn.assigns, ~w[ r g b h s l ]a)
  end
end
