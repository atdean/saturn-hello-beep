# Description

This is a project to create an audible "hello world" tech demo for the Sega Saturn game console's sound subsystem. It will be incredibly simple and limited - the sound CPU driver (written in 68000 assembly) will accept two commands (start playing, and stop playing) and will play a single tone or waveform in a continuous loop until the Saturn's master CPU sends a command for it to stop. The process of loading the driver and wave data into the subsystem's sound RAM, as well as playing and stopping the sound from the main Saturn program, will be handled through an included C library that can be included in a project.

I'm using this to learn the Saturn's hardware in a hands-on way, with the eventual goal of creating a fully-custom and more flexible sound library for the Saturn homebrew community. With a hardware architecture this complex and old, you really have to learn to crawl before you can walk!

Build instructions and a demo project (probably developed on top of one of the two popular frameworks currently available) will be included as the project progresses. This will be able to run on actual Saturn hardware.