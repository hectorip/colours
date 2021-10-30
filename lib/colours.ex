defmodule Colours do
  @moduledoc """
  Colours keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def rgb_to_hsl(r, g, b) do
    r1 = r / 255.0
    g1 = g / 255.0
    b1 = b / 255.0
    {cmin, cmax} = Enum.min_max([r1, g1, b1])
    delta = cmax - cmin
    h = case {delta, cmax} do
      {0.0, _} -> 0.0
      {_, ^r1} -> rem(trunc((g1 - b1) / delta), 6)
      {_, ^g1} -> ((b1 - r1)  / delta) + 2
      {_, ^b1} -> ((r1 - g1) / delta) + 4
    end

    h = h * 60
    l = (cmax + cmin) / 2
    s = case delta do
      0.0 -> 0.0
      _ -> (delta / (1 - abs(2 * l - 1)))
    end

    {trunc(h), trunc(s * 100), trunc(l *100)}
  end
end
