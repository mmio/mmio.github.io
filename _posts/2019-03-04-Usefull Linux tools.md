---
layout: post
title: Useful Linux Tools
author: Dominik Vasko
desc: List of some of my favourite linux tools
---
## Intro
This post contains some usefull linux command tools that I use a lot.

## nohup
This a small program that can be really useful. Its purpose is to let you run processes detached from the current terminal session. You might ask why is that useful. Well lets say you are running a server or other command in the terminal, when you close the terminal the process stops. It is particularly useful when you are accessing a computer via ssh, with nohup you can run a process close the session and come back to it when it's done. Its really simple to use, just type:
```bash
nohup <command to run> &
```

nohup should be installed on your distro by default. You can also check out the full manual <!--- {% man 1 nohup ubuntu%}. -->

## fzf
Or fuzzy finder, this little utility can search you whole drive for a file or directory, it has support for regexps and works really fast. To install it just type:

```bash
sudo apt install fzf
```

After instalation you can type `fzf` in the terminal which opens search window. You can type the name of the file you are looking for and fzf will try to find it. You can also type only parts of the filename, that is where the fzf shines. To find out more check the manual <!--- {% man 1 fzf %} --> .

![FZF](/assets/images/fzf.png){:class="img-thumbnail"}

## entr
Have you ever wanted to run a command o a file change, like recompiling or restarting something. Entr is exactly for that, you tell it to watch a file and it will execute whatever command you assign to it. It you don't have it, just install it with:
```bash
sudo apt install entr
```

The syntax for this one is a little bit different than orginary linux programs. First you have to `echo` the file you wanna watch and pipe it to entr. Example bellow:
```bash
echo random.c | entr -s 'gcc random.c -Wall -Werror -pedantic -ansi; ./a.out'
```
The command above will execute `gcc` everytime random.c is changed(saved). This is useful when you don't want to manually type the whole thing. Futher examples can be found in the manual <!--- {% man 1 entr ubuntu %} -->

## redshift
If you want to make your computer screen easier on you eyes you can use Redshift to make all the colors warmer. Elegedly it also helps with sleeping. Just install it and enjoy. <!--- {% man 1 redshift ubuntu %} -->
```bash
sudo apt install redshift
```

