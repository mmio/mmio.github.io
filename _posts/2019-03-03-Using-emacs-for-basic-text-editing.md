---
layout: post
title: Using Emacs for basic text editing
author: Dominik Vasko
desc: Short introduction to the Emacs editor
---

![Emacs](/assets/images/emacs.png){:class="img-thumbnail"}

## Getting emacs
First thing you will need is the editor itself, I encourage you to use
a linux distro, it makes things easier(and faster). If you want to use
windows you can go ahead, it is also quiet staightforward. In ubuntu
you can type sudo apt install emacs, which will install the default
version from your repository. You can also build your own Emacs
binary, which is more up to date(instructions here).

Second after installation you will have 2 options(or 3), how to run
Emacs. GUI, CLI, (background deamon). Use your application launcher or
type emacs(emacs -nw for CLI) in your terminal.

Before you start the characters `C` and `M` are modifiers. `C` stands for Ctrl and `M` for Alt. If another character is appended with a dash you have to press it while holding the modifier e.g `C-x C-c` means hold Ctrl and pres x then hold Ctrl and pres c(this one exits emacs).

## Movement
Emacs is quiet robust so don't expect to learn the ins and outs in a
few minutes. You can learn basic movement though. Most modern editor
are quiet dumm when navigating. In Emacs you can basicly move with the
arrows just like any other editor. First open a file type `C-x C-f` and
type a filename. An empty buffer will appear where you can type and
move with the arrow keys. A better method is to use `C-f`, `C-b`, `C-p`, `C-n`
for movement for one simple reason, you don't have to move your hand
from the home row of your keyboard, which makes it much easier to go
back to typing text.(You can bind your Ctrl key to CapsLock for a
better ergonomic experiance).

If you want to move faster you can use `M-f`,`b` for moving by
words instead of characters. The screan can be moved by `C-v`(pagedown)
and `M-v`(pageup).

## Deleting stuff
Besides moving you can also delete with backspace or Del. If you want
to delete everything to the right of your cursor(kill the line) press
`C-k`. To delete individual character use `C-d`.

## The end
For now this should be enoght try those key combinations of different
files and get used to them. They make your typing experiance faster
and you can edit text much efficiently without the need for a mouse.

P.S
To save a file just type `C-x C-s`
