#!/usr/bin/env bash
echo "Failing on purpose to test the failure comment (temporary)"; exit 1
# Runs from the clone root on the Tessl cloud machine before each agent run.
# The machine already has Node 24, which package.json accepts, so the only
# step is installing dependencies. It's safe to run more than once.
set -eo pipefail

echo "Installing dependencies with npm ci"
npm ci

