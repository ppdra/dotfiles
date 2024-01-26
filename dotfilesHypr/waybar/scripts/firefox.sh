#!/bin/sh

if pgrep -x "firefox" >/dev/null; then
	printf '{"text":"Firefox on","class":"enabled"}';
else
	printf '{"text":"Firefox off"}';
fi
