TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += exceptions_off #disable c++ exceptions handling to gain memory, speed and code simplicity. http://doc.qt.io/qt-5/qmake-variable-reference.html

HEADERS += \
    game_engine.h \
    texture_wrapper.h \
    tile.h \
    sprite_sheet.h \
    tile_map.h \
    sprite.h \
    level.h \
    vector2d.h \
    vector2d_angle.h \
    bullet.h \
    fpscounter.h \
    keystate.h \
    game_object.h \
    camera.h \
    game.h \
    viewport.h \
    scene_manager.h \
    collider2d.h \
    box_collider2d.h \
    polygon_collider2d.h \
    tank.h \
    transform.h

SOURCES += \
        main.cpp \
    game_engine.cpp \
    texture_wrapper.cpp \
    tile.cpp \
    sprite_sheet.cpp \
    tile_map.cpp \
    sprite.cpp \
    level.cpp \
    vector2d.cpp \
    vector2d_angle.cpp \
    bullet.cpp \
    fpscounter.cpp \
    keystate.cpp \
    game_object.cpp \
    camera.cpp \
    game.cpp \
    viewport.cpp \
    scene_manager.cpp \
    collider2d.cpp \
    box_collider2d.cpp \
    polygon_collider2d.cpp \
    tank.cpp \
    transform.cpp


win32-g++:contains(QMAKE_HOST.arch, x86_64) {
#64bit mingw selected kit
windows: LIBS += -LC:\\libs\\SDL2_mingw-2.0.9\\x86_64-w64-mingw32\\lib -lmingw32 -lSDL2main -lSDL2
windows: LIBS += -LC:\\libs\\SDL2_ttf-2.0.14-mingw\\x86_64-w64-mingw32\\lib -lSDL2_ttf
windows: LIBS += -LC:\\libs\\SDL2_image-2.0.4-mingw\\x86_64-w64-mingw32\\lib -lSDL2_image

windows: INCLUDEPATH += C:\\libs\\SDL2_mingw-2.0.9\\x86_64-w64-mingw32\\include\\SDL2
windows: INCLUDEPATH += C:\\libs\\SDL2_ttf-2.0.14-mingw\\x86_64-w64-mingw32\\include\\SDL2
windows: INCLUDEPATH += C:\\libs\\SDL2_image-2.0.4-mingw\\x86_64-w64-mingw32\\include\\SDL2
} else {
win32-g++:{
#32bit mingw selected kit
windows: LIBS += -LC:\\libs\\SDL2_mingw-2.0.9\\i686-w64-mingw32\\lib -lmingw32 -lSDL2main -lSDL2
windows: LIBS += -LC:\\libs\\SDL2_ttf-2.0.14-mingw\\i686-w64-mingw32\\lib -lSDL2_ttf
windows: LIBS += -LC:\\libs\\SDL2_image-2.0.4-mingw\\i686-w64-mingw32\\lib -lSDL2_image

windows: INCLUDEPATH += C:\\libs\\SDL2_mingw-2.0.9\\i686-w64-mingw32\\include\\SDL2
windows: INCLUDEPATH += C:\\libs\\SDL2_ttf-2.0.14-mingw\\i686-w64-mingw32\\include\\SDL2
windows: INCLUDEPATH += C:\\libs\\SDL2_image-2.0.4-mingw\\i686-w64-mingw32\\include\\SDL2
}
}


win32-msvc*:contains(QMAKE_HOST.arch, x86_64) {
#64bit msvc selected kit
windows: LIBS += -LC:\\libs\\SDL2-2.0.9\\lib\\x64 -lSDL2
windows: LIBS += -LC:\\libs\\SDL2_ttf-2.0.14\\lib\\x64 -lSDL2_ttf
windows: LIBS += -LC:\\libs\\SDL2_image-2.0.4\\lib\\x64 -lSDL2_image
} else {
#32bit msvc selected kit
windows: LIBS += -LC:\\libs\\SDL2-2.0.9\\lib\\x86 -lSDL2

windows: LIBS += -LC:\\libs\\SDL2_ttf-2.0.14\\lib\\x86 -lSDL2_ttf
windows: LIBS += -LC:\\libs\\SDL2_image-2.0.4\\lib\\x86 -lSDL2_image
}

win32-msvc*{
#32bit or 64bit msvc selected kit
windows: INCLUDEPATH += C:\\libs\\SDL2-2.0.9\\include
windows: INCLUDEPATH += C:\\libs\\SDL2_ttf-2.0.14\\include
windows: INCLUDEPATH += C:\\libs\\SDL2_image-2.0.4\\include
}


mac: LIBS += -L$$/usr/local/Cellar/sdl2/2.0.8/lib -lSDL2
mac: LIBS += -L$$/usr/local/Cellar/sdl2_image/2.0.4/lib -lSDL2_image
mac: LIBS += -L$$/usr/local/Cellar/sdl2_ttf/2.0.14/lib -lSDL2_ttf
#mac: LIBS += -L$$/usr/local/Cellar/sdl2_mixer/2.0.4/lib -lSDL2_mixer

mac:INCLUDEPATH += /usr/local/Cellar/sdl2/2.0.8/include/SDL2
mac:INCLUDEPATH += /usr/local/Cellar/sdl2_image/2.0.4/include/SDL2
mac:INCLUDEPATH += /usr/local/Cellar/sdl2_ttf/2.0.14/include/SDL2
#INCLUDEPATH += /usr/local/Cellar/sdl2_mixer/2.0.4/include/SDL2
