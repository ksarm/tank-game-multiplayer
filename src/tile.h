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

#ifndef TILE_H
#define TILE_H

#include <SDL.h>
#include <math.h>
#include "texture_wrapper.h"
#include "sprite.h"
#include "game.h"

//The tile
class Tile
{
    public:
        //Initializes position and type
        Tile(int x, int y, int w, int h);

        //Shows the tile
        void render();
        void render_radar();

        //Get the collision box
        SDL_Rect getBox();

        Sprite sprite;
    private:
        //The attributes of the tile
        SDL_Rect mBox;
};

#endif // TILE_H
