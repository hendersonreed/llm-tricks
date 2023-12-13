#!/bin/env bash

# llm.sh
# a simple script for invoking new chat sessions using simon willison's `llm` utility.
# update the following script to customize to your own terminal emulator, window manager, etc.
#
# In particular, `terminal_emulator_command` is intended to launch a single new instance of your
# terminal emulator, and later the `llm` command to run simonw's utility will be appended to it.
# I use alacritty, so that's what I have written in by default, but all terminal emulators should offer
# the ability to pass a command that will be run at launch by the term.
terminal_emulator_command="alacritty --class llm --command"

# you can change which model is used by adding more here (look at `llm models` output to find names.)
#model="mistral-7b-openorca"
model="gpt-3.5-turbo-16k"

# Check if the script was invoked with at least one argument
if [ $# -gt 0 ]; then
  attitude="$1"
else
  # No arguments provided, set attitude to an empty string
  attitude=""
fi

set -euo pipefail


case $attitude in
  "terse")
    # Code to be executed if $command is 'terse'
    prompt="-s 'Be terse and don't overwhelm the user with information.'"
    $terminal_emulator_command llm chat --model $model "$prompt"
    ;;
  "comprehensive")
    # Code to be executed if $command is 'comprehensive'
    prompt="-s 'Answer the question with no details spared.'"
    $terminal_emulator_command llm chat --model $model "$prompt"
    ;;
  "")
    $terminal_emulator_command llm chat --model $model
    ;;
  *)
    # Code to be executed for all other cases
    notify-send "No matching attitude."
    exit 1
    ;;
esac
