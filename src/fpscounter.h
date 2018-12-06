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

#ifndef FPSCOUNTER_H
#define FPSCOUNTER_H

//#include "iblabla.h"
//#include "idrawable.h"
#include <math.h>
#include "texture_wrapper.h"
#include <string>
#include "game_object.h"

class FpsCounter : public GameObject
{
public:
    FpsCounter();

    void handleEvent(SDL_Event &e);
    void Draw();
    void Update(std::chrono::milliseconds::rep deltaTime);

    void LoadFont(std::string font_file_name = "Roboto-Regular.ttf", int ptsize = 16);

    bool DisplayFpsCounter = true;
    int fps = 0;
    std::string fps_str = "";

    SDL_Color textColor = { 204, 0, 204, 255 };
};

#endif // FPSCOUNTER_H
