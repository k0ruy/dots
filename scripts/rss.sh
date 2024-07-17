#!/bin/bash

OUTPUT=$(newsboat -x reload print-unread)

if echo "$OUTPUT" | grep -q "Error"; then
    :
else
    echo '<txt>$($OUTPUT | grep -o '[0-9]*')</txt>'
		echo "<txtclick>kitty -e newsboat</txtclick>"
fi
