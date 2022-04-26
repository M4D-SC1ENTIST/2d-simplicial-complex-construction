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

echo_and_run cd "/home/xechariah/projects/entry_level_project/src/kr_mav_control/interfaces/kr_python_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/xechariah/projects/entry_level_project/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/xechariah/projects/entry_level_project/install/lib/python3/dist-packages:/home/xechariah/projects/entry_level_project/build/kr_python_interface/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/xechariah/projects/entry_level_project/build/kr_python_interface" \
    "/usr/bin/python3" \
    "/home/xechariah/projects/entry_level_project/src/kr_mav_control/interfaces/kr_python_interface/setup.py" \
     \
    build --build-base "/home/xechariah/projects/entry_level_project/build/kr_python_interface" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/xechariah/projects/entry_level_project/install" --install-scripts="/home/xechariah/projects/entry_level_project/install/bin"
