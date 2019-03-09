---
layout: post
title: Running old DOS games on Linux
author: Dominik Vasko
desc: Short tutorial on using DOSBOX for DOS games
---

![DOSBOX](/assets/images/dosbox.png){:class="img-thumbnail"}

## Intro
Have you ever wanted to run old(really old) DOS games line DOOM, HERETIC, HEXEN, or TETRIS. Look no further. This tutorial will tell you have to run them on the latest linux distros. 

## Installation
Since DOSBOX, the software we will be using, is parto of many linux distro repositories on Ubuntu you can easily install it with apt(`sudo apt install dosbox`).

## Running the games
By default you can run games out of the box. I foun that the easiest way to do so is to run the dosbox command in the terminal where all your games are. This will automaticly mount the directory (you would have to do that manualy, if you run it from the application launcher). If you are not familiar with DOS you can navigate with `cd` just like on linux. To list the content of a directory type `dir` you can also use flags like `\W` to show the content in multiple columns. If you are already in the directory of you game just type the name of the excutable(.EXE).

## Configuration
To run DOSBOX in fullscreen just type `Alt+Enter`. You might find that the aspect ration of off, usually 4:3. The games of that era were programmed to work in this aspect ratio. You can tune it in the dosbox config file located here `~/.dosbox/dosbox-0.74.conf`. You can experiment with the scale variables(all the necessary info is in the file). Don't forget to restart dosbox after you made your changes.

## Not just games
Dosbox is also usefull when you wanna run old software. The process is basicly same as for other games.
