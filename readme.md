# llm-tricks

This is my personal collection of llm tricks, scripts, prompts, and more.

# llm.sh

This is a teeny tiny script for launching terminal sessions that have an LLM chat interface already running in them.

## dependencies:

- [llm](https://github.com/simonw/llm)
- bash

## works on my machine, let's make it work on yours.

To adapt to your own system, there are a few things you will need to do.

1. update to match your own terminal emulator.
    - this means change `$terminal_emulator_command` to work with your default terminal emulators.
2. update the prompts to your taste.
3. set up a keybinding in your window manager or desktop environment so you can launch this script with a key combination.
