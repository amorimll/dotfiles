#!/bin/bash
sensors 2>/dev/null | awk '/Tctl:/ {print $2}'
