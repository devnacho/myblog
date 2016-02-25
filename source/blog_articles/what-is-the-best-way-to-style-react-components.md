---
title: What is the best way to style React components these days?
layout: article
published: true
date: 2016-02-24 00:00 UTC
tags: React, styles, css modules, radium
---
The short answer is that you should use CSS Modules. Here’s why:

As you all know, the JavaScript & React ecosystem is evolving at a fast pace.
Many people say that it may even be evolving too fast. You may find yourself
using a library for a new project, and two months later you’ll find out that the
library is no longer the industry practice, and everyone has started using some
other newer, shinier library.

After Facebook announced the Flux Architecture in 2014, there was a Big Bang
explosion of different libraries that solved the state management problem in a
number of different, subtle ways. There was a new library on GitHub almost every
month — nearly every week. Some examples include: DIY Facebook Flux, Fluxxor,
McFly, NuclearJS, Flummox, Fluxette, Lux, Marty, Reflux, Alt, Yahoo-Fluxible,
Delorean, Barracks, Fluxy & Redux (which isn’t exactly a form of Flux
architecture, but it has certain similarities and solves the same problem).

As time has passed, this chaotic environment has begun to stabilise, and three
final contenders have emerged as the industry practice: Alt, Reflux & Redux. A
few months later, Redux came out on top, and it is now the only state management
library that people are talking about.

The same thing is happening with the way we manage our styles. After agreeing on
the historical problems CSS presents (e.g., Global Namespace, Dependencies, Dead
Code Elimination, Sharing Constants), lots of new libraries have suddenly
appeared. The following are some of the new ways to style React components:
React Built-in Inline Styles, Radium, React Style, React Inline, jsxstyle, React
JSS, CSS Modules, React Shadow, react-in-style, React Free Style, React Look,
smart-css, Stillr, React Inline CSS & react-css builder, among others.

READMORE

Unfortunately, we are still in the chaotic phase where no library has emerged as
the indisputable winner. The good news is that we might be reaching the phase
where just two libraries are surfacing as the final contenders: Radium & CSS
Modules.

![GitHub Stars Growth for React Style
Libraries](http://jgnatch-dropshare.s3.amazonaws.com/Screen-Shot-2016-02-24-16-18-36.png)

*Chart 1: Growth of GitHub stars over time for libraries to style React*

If we examine this chart, which shows the growth of GitHub stars over time for
competing libraries, we’ll see that while Radium has the most stars, CSS Modules
features a steeper growth curve. And if we count the stars of react-css-modules,
or a specialised library of CSS Modules for React, then CSS Modules easily
surpasses Radium.

Yes, I know… GitHub stars are pure vanity, but in these cases they might show
some important trends. If we take a look at the same chart with Flux libraries,
we will see that the growth of GitHub stars over time clearly shows the
evolution of the Flux Wars, and how Redux finally took over.

![GitHub Stars Growth of Flux
Libraries](/images/flux-growth-comparison.png)

*Chart 2: Growth of GitHub stars over time for flux libraries*

## So, which styles library should I choose?
Both Radium & CSS Modules are great libraries, and either option will be
light-years better that continuing with regular CSS.

If I had to choose, I’d go with CSS Modules🏆. In my opinion, CSS Modules is a
simple and elegant idea with extraordinary power. It is based on just two simple
concepts: local by default styles and composing styles. It lets you keep the
things you like and are used to on CSS, but with a much more maintainable code.

Another interesting point is that CSS Modules is less coupled to React than
Radium. You can use it with Angular or any other JS Framework. There’s even a
work-in-progress version of CSS Modules for Rails.

In conclusion, if you want to considerably improve your life when you deal with
styles, go for CSS Modules.

You can see how it is used [here](https://github.com/css-modules/css-modules) — and [here's](https://github.com/css-modules/webpack-demo) an example repo of how can you set
it up with React & Webpack.

I’ll be writing about how CSS Modules is used, including its advantages, in
greater detail in the next few weeks. If you don’t want to miss it, make sure to
sign up for my mailing list below.
