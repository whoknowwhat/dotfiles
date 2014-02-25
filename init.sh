#!/bin/bash

# put this script to /etc/init.d/
# then, run "chkconfig --add script"

cd "/path/to/work"

case "$1" in
    start)
        ;;
    stop)
        ;;
    restart)
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac
