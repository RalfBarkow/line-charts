module LineChart.Grid exposing (Config, default, dots, lines)

{-|

# Quick start
@docs default

# Customizing
@docs Config, dots, lines

# How do I change the grid?
By default there is a grid by every tick. If you want to change
the position of the grid or remove it all together, alter your tick
configuration of your axis.

The path to the tick in the configuration does through the `x` or `y`
property for vertical and horizontal grids respectivily and then in the
`axis` property.

See `LineChart.Dimension` -> `LineChart.Axis` -> `LineChart.Axis.Tick`.

-}

import Internal.Grid as Grid
import Color


{-| -}
type alias Config =
  Grid.Config


{-| -}
default : Config
default =
  Grid.default


{-| Gets you a dots grid of a given color.
-} -- TODO add size?
dots : Color.Color -> Config
dots =
  Grid.dots


{-| Gets you grid lines of a given width and color.
-}
lines : Float -> Color.Color -> Config
lines =
  Grid.lines