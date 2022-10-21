#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/trax/personal-projects/bd1-2/src/bd1_train"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/trax/personal-projects/bd1-2/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/trax/personal-projects/bd1-2/install/lib/python3/dist-packages:/home/trax/personal-projects/bd1-2/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/trax/personal-projects/bd1-2/build" \
    "/usr/bin/python3" \
    "/home/trax/personal-projects/bd1-2/src/bd1_train/setup.py" \
    egg_info --egg-base /home/trax/personal-projects/bd1-2/build/bd1_train \
    build --build-base "/home/trax/personal-projects/bd1-2/build/bd1_train" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/trax/personal-projects/bd1-2/install" --install-scripts="/home/trax/personal-projects/bd1-2/install/bin"
