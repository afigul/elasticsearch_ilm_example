#!/usr/bin/env bash
echo "Stopping ..."
sh ./stop.sh
echo "Building ..."
sh ./build.sh
echo "Starting ..."
sh ./start.sh
echo "Restart finished!"