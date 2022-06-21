#!/bin/bash

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done
