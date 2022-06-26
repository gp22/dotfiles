#!/bin/bash

# Run all program install scripts
for f in programs/pre/*.sh; do bash "$f" -H; done
for f in programs/*.sh; do bash "$f" -H; done
