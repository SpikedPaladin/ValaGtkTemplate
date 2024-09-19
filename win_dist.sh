#!/usr/bin/env bash
DISTDIR=dist
rm -rf dist
mkdir -p $DISTDIR
mkdir -p $DISTDIR/bin

# Collect all dll's and copy to bin
ldd build/src/example.exe | grep '/mingw.*\.dll' -o | xargs -i cp {} $DISTDIR/bin
cp /mingw64/bin/librsvg-2-2.dll $DISTDIR/bin # Required for no reason
cp /mingw64/bin/gdbus.exe $DISTDIR/bin # Copy dbus
cp build/src/example.exe $DISTDIR/bin # Copy our app

# Copy icons
mkdir -p $DISTDIR/share/icons
cp -r /mingw64/share/icons/Adwaita $DISTDIR/share/icons
cp -r /mingw64/share/icons/hicolor $DISTDIR/share/icons
rm -rf $DISTDIR/share/icons/Adwaita/cursors

# Copy loaders
mkdir -p $DISTDIR/lib
cp -r /mingw64/lib/gdk-pixbuf-2.0 $DISTDIR/lib
gdk-pixbuf-query-loaders > $DISTDIR/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache
rm $DISTDIR/lib/gdk-pixbuf-*/*/loaders/*.a

# Copy schemas
mkdir -p $DISTDIR/share/glib-2.0/schemas
cp /mingw64/share/glib-2.0/schemas/gschemas.compiled $DISTDIR/share/glib-2.0/schemas