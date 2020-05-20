#!/bin/bash
input="list"
while IFS=" " read -r mID token remainder
do
  python3 skana-music-bot.py $mID $token > logs/exec.$mID.log 2>&1 &
done < "$input"
