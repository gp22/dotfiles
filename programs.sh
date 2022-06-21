#!/bin/bash

# Run all programs/ install scripts
for f in programs/pre/*.sh; do bash "$f" -H; done
for f in programs/*.sh; do bash "$f" -H; done
for f in programs/post/*.sh; do bash "$f" -H; done
