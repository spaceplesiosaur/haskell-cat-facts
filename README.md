# Haskell Cat Facts

Haskell Cat Facts is a tiny app that I designed to try out a little bit of Haskell, a functional programming language that is completely unlike JS.  

JS is an imperative language, which uses functions to change the state of a program towards an eventual goal. User input is generally integral to changing the state.

In a functional language like Haskell, you simply articulate the relationship between arguments and return values, and actual end-user input is deprioritized.

Since I am very new at Haskell and at functional programming languages in general, this repo includes articulations of each step that I took.

The app is designed as a 5 question trivia game you can run in your terminal, consisting of five questions about my cat, Spike.

## Created by:

- [Allison McCarthy](https://github.com/spaceplesiosaur)


## Try Haskell Cat Facts locally in your computer

First, your computer will need to run Haskell.  Run `brew install ghc` in your terminal to install the Glasgow Haskell Compiler.  https://www.haskell.org/ghc/

You might also find it helpful to install ide-haskell and haskell-language in Atom, if that's what you use.

Next, clone down the repo into whatever directory you would like it to be in:

``$ git clone https://github.com/spaceplesiosaur/haskell-cat-facts``


`` cd `` into Haskell Cat Facts.

You will need to compile this yourself, so in terminal, run `ghc cat-facts.hs`

Now, to run it, run `./cat-facts`


## Built With:
- Haskell

![Haskel Cat Facts demo](https://media.giphy.com/media/ehgYkXsMh10tg5X53z/giphy.gif)
