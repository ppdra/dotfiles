#!/bin/bash


if pgrep -f "/opt/google/chrome/chrome https://youtube.com" >/dev/null; then
  printf '{"text":"Youtube on","class":"enabled"}';
else
  printf '{"text":"Youtube off"}';
fi
