# MihPhoto project file for Qt5

message($$QMAKESPEC)

linux-g++ {
    message(build for **amd64**)
}

linux-arm-gnueabi-g++ {
    message(build for **armhf**)
}

linux-aarch64-gnu-g++ {
    message(build for **arm64**)
}

TARGET = mihphoto
installPrefix = /usr
target.path = $${installPrefix}/bin
DEPLOYMENT_PATH = /usr/share/$${TARGET}
images.files = images/*
images.path = $${DEPLOYMENT_PATH}/images
icons.files = icons/*
icons.path = $${DEPLOYMENT_PATH}/icons
desktopfile.files = $${TARGET}.desktop
desktopfile.path = /usr/share/applications/hildon
icon.files = $$files(symbol/hicolor/*)
icon.path = $${installPrefix}/share/icons/hicolor

#DEFINES += VERSION="1.0.14"
VERSION = 1.0.14
#VERSION="\\"1.0.14\\""
DEFINES += APP_VERSION=\\\"$$VERSION\\\"
DEFINES += Q_WS_MAEMO_5

QT       += core gui svg widgets

SOURCES += \
    src/TouchUI.cpp \
    src/TouchMouseControl.cpp \
    src/ScreenViewer.cpp \
    src/ScreenDirectory.cpp \
    src/ScreenBase.cpp \
    src/MainWindow.cpp \
    src/main.cpp \
    src/ImageWithInfo.cpp \
    src/ImageLoadThread.cpp \
    src/ImageLoadQueue.cpp \
    src/ImageArea.cpp \
    src/ConfigDialog.cpp \
    src/Config.cpp \
    src/Trashcan.cpp \
    src/ScreenSettings.cpp

HEADERS  += \
    src/TouchUI.h \
    src/TouchMouseControl.h \
    src/ScreenViewer.h \
    src/ScreenDirectory.h \
    src/ScreenBase.h \
    src/MainWindow.h \
    src/ImageWithInfo.h \
    src/ImageLoadThread.h \
    src/ImageLoadQueue.h \
    src/ImageLoadItem.h \
    src/ImageArea.h \
    src/ConfigDialog.h \
    src/Config.h \
    src/Trashcan.h \
    src/ScreenSettings.h

FORMS += \
    src/ConfigDialog.ui

RESOURCES += \
    src/mihphoto.qrc

RC_FILE = src/MihPhoto.rc

INSTALLS += images \
    icons \
    icon \
    desktopfile \
    target
