#!/usr/bin/env bash

cd "$(dirname "$0")/../"
while true; do
    inotifywait --event modify "test2.tex";
    context --noconsole --batchmode "test2.tex";
done
