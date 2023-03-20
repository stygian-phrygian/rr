# rr

## App Description
This is an app for making music with a workflow that is primarily:
- (re)sample based
- grid (tracker) sequencer navigation based
- terminal based

This app is mostly an experiment. It's inspired after other tech, like:
- vim
- hardware grooveboxes (like electron digitakt or OP1)

Nota Bene:

It's *not* intended to be general purpose, like a DAW. From (my own) 
experience, I don't need "general purpose". 90% of most DAW "features" I never 
used. Moreover, those "features" distracted from the workflow.

My priority features:
- easy file/instrument browsing/loading
- easy resampling/bouncing of tracks/master
- easy computer keyboard note playback
- easy sequencer navigation
    - vim navigation
    - command language
- minimal UI
    - runs in shell
    - primarily text based
- light editing of samples:
    - volume
    - pan
    - transpose
    - reverse
    - chop/offset
    - apply send effects
- basic send effects
    - chorus
    - delay
    - reverb
- low CPU demand

## Song Description

Song:
- 1 order of
- 256 (possible) patterns

Pattern:
- 16 tracks
- 2 sends
- 1 master

Track:
- sequence of instrument events
- sequence of track events

Master Track
- same as track but no playback events

Send:
- chorus
- analog multitap delay
- reverb

Track Event:
- change track:
    - volume
    - pan
    - send amount
    - compressor parameters
    - equalizer parameters

Instrument Event:
- instrument#
- start time
- duration
- midi pitch
- velocity
- articulation# (pluck vs mute vs bow)
- slide
- delay
- pan
- track#
- possible polyphony?
- onto a track
- can be randomized in some way?

Instrument:
- map of notes to samples
- redundant samples for a note = round robin playback
- samples may be grouped into different articulations
- samples may be stereo
- playback:
    - loop points
    - adsr/lfo filter
    - adsr/lfo volume
    - adsr/lfo pan
    - unison
    - distortion/bitcrush
    - amp sim

## Input Modes

Like vim, we have different modes of input.

Normal mode
Insert mode (can be playing or not playing)

operator -> motion/textobject

## Libraries
Do I *really* need to abstract away portaudio/portmidi and ncurses? Really?

