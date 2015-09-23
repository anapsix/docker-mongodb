#!/bin/sh
set -e

if [ -z "$1" ] || [ "$1" = 'mongod' ]; then
		gosu mongodb "$@" &
		pid="$!"

		if ! kill -s 0 "$pid"; then
			echo 'MongoDB failed to start' >&2
			exit 1
		fi

		echo 'MongoDB started..'
fi

exec "$@"
