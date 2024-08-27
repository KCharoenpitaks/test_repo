#!/bin/bash

# Trap SIGINT (Ctrl+C) and exit the loop
trap "echo 'Exiting...'; exit" SIGINT

while true; do
  bash /mnt/CARLA/CARLA_Leaderboard_20/CarlaUE4.sh -quality-level=Epic -world-port=2000 -resx=800 -resy=600 -RenderOffScreen
  if [ $? -ne 0 ]; then
    echo "CarlaUE4.sh failed, restarting..."
    sleep 5  # Optional: Add a delay before restarting
  else
    break  # Exit the loop if the command succeeds
  fi
done
