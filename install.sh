#!/bin/sh
#
#    Copyright 2007-2009 Canonical Ltd.
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

LIBFILES="mintstick.py raw_write.py raw_format.py mountutils.py"
DATAFILES="mintstick.ui"


if [ "$1" = "uninstall" ]; then
    rm -rf "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/lib/mintstick
    rm -rf "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/mintstick
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/mintstick.desktop
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor16x16/apps/usb-creator.png
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor24x24/apps/usb-creator.png
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor32x32/apps/usb-creator.png
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor48x48/apps/usb-creator.png
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/mintstick-kde.desktop
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/mintstick-format.desktop
    rm -r "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/mintstick-kde-format.desktop
    rm -f "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/bin/mintstick
    rm -rf "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/polkit-1/actions/org.linuxmint.im.policy
    rm -rf "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/kde4/apps/solid/actions/mintstick-format.desktop
else

    cp share/applications/mintstick.desktop "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/
    cp share/applications/mintstick-format.desktop "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/
    cp share/applications/mintstick-kde.desktop "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/
    cp share/applications/mintstick-format-kde.desktop "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/applications/
    cp share/polkit/org.linuxmint.im.policy "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/polkit-1/actions
    cp share/kde4/mintstick-format_action.desktop "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/kde4/apps/solid/actions
    cp share/icons/hicolor/16x16/apps/usb-creator.png "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor/16x16/apps/usb-creator.png
    cp share/icons/hicolor/24x24/apps/usb-creator.png "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor/24x24/apps/usb-creator.png
    cp share/icons/hicolor/32x32/apps/usb-creator.png "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor/32x32/apps/usb-creator.png
    cp share/icons/hicolor/48x48/apps/usb-creator.png "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/icons/hicolor/48x48/apps/usb-creator.png
    cp share/nemo/actions/mintstick.nemo_action "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/nemo/actions/mintstick.nemo_action
    cp share/nemo/actions/mintstick-format.nemo_action "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/nemo/actions/mintstick-format.nemo_action
    cp mintstick "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/bin/
    mkdir -p "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/lib/mintstick
    mkdir -p "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/mintstick

    for item in $LIBFILES; do
        cp lib/$item "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/lib/mintstick/
    done

    for item in $DATAFILES; do
        cp share/mintstick/$item "/home/cihan/Desktop/Mintstick/pkg/mintstick-git"/usr/share/mintstick/
    done
fi
