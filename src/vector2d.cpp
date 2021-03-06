/* ***********************************************************************
 * Tank Game Multiplayer
 * (C) 2018 by Yiannis Bourkelis (hello@andama.org)
 *
 * This file is part of Tank Game Multiplayer.
 *
 * Tank Game Multiplayer is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Tank Game Multiplayer is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Tank Game Multiplayer.  If not, see <http://www.gnu.org/licenses/>.
 * ***********************************************************************/

#include "vector2d.h"
#include <math.h>

Vector2D::Vector2D()
{
}

Vector2D::Vector2D(double x, double y) : x(x), y(y)
{
}

//-----------------------------------------------------------------------------
// Purpose: Rotate a vector
//-----------------------------------------------------------------------------
void Vector2D::Rotate( const double angle )
{
    double xt = (x * cos(angle)) - (y * sin(angle));
    double yt = (y * cos(angle)) + (x * sin(angle));

    x = xt;
    y = yt;
}

Vector2D Vector2D::Up()
{
    return Vector2D(0, -1);
}

Vector2D Vector2D::Down()
{
    return Vector2D(0, 1);
}

Vector2D Vector2D::Left()
{
    return Vector2D(-1, 0);
}

Vector2D Vector2D::Right()
{
    return Vector2D(1, 0);
}
