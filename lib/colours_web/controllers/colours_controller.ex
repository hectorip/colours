defmodule ColoursWeb.ColoursController do
  use ColoursWeb, :controller

  def rgb_to_hsl(conn, %{"r" => r, "g" => g, "b" => b}) do
    {r, _} = Integer.parse(r)
    {g, _} = Integer.parse(g)
    {b, _} = Integer.parse(b)
    {h, s, l} = Colours.rgb_to_hsl(r, g, b)
    assigns = %{
      r: r, g: g, b: b,
      h: h, s: s, l: l
    }
    render conn, "rgb_to_hsl.json", assigns
  end
end
