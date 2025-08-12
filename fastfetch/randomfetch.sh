#!/bin/bash

# Images ka path
IMAGE_DIR="$HOME/.config/fastfetch/assets"

# Quotes ka array
QUOTES=(
    "Power comes in response to a need, not a desire. - Goku"
    "A lesson in chasing dreams. - Naruto"
    "Fear is not evil. It tells you what your weakness is. - Gildarts"
    "A lesson without pain is meaningless. - Edward Elric"
    "When you give up, your dreams and everything else are gone. - Ichigo"
)

# Random image pick
IMAGE=$(find "$IMAGE_DIR" -type f | shuf -n 1)

# Random quote pick
QUOTE=${QUOTES[$RANDOM % ${#QUOTES[@]}]}

# Fastfetch run
fastfetch --image "$IMAGE" --logo-width 25 --logo-height 15
echo -e "\n💬 $QUOTE"
