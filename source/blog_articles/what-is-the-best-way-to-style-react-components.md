---
title: What is the best way to style react components these days?
layout: article
published: true
date: 2016-02-24 00:00 UTC
tags: react, styles, css modules, radium
---
The short answer is you should use CSS Modules. Here's why:

As you all know the JavaScript & React ecosystem is evolving at a fast pace.
A lot would say that it might be evolving too fast. You start using a library
for a new project and 2 months later you find out this library is no longer the
industry practice and everyone started using some other newer shinier library.

After the Flux Architecture was announced by Facebook on 2014 there was a
Big Bang explosion of different libraries that solved the state management  problem in subtle
different ways. There was a new library on GitHub almost every month(or every
week). Some examples are: DIY Facebook Flux, Fluxxor, McFly, NuclearJS, Flummox, Fluxette, Lux,
Marty, Reflux, Alt, Yahoo-Fluxible, Delorean, Barracks, Fluxy & Redux (Which
basically is not a Flux architecture but has some similarities and solves the same
problem).

As time passed this chaotic environment started to stabilise and three final
contenders emerged as the industry practice: Alt, Reflux & Redux. A few months more
passed and finally Redux was the winner of the battle, and now is the only state
management library everyone is talking about. 

The same thing is happening with the way we manage our styles. After agreeing on
the historical problems CSS presents (e.g. Global Namespace, Dependencies, Dead Code
Elimination, Sharing Constants) lots of new libraries suddenly appeared. Some of the new ways to style
react components are: React Built-in Inline Styles, Radium, React Style, React Inline,
jsxstyle, React JSS, CSS Modules, React Shadow, react-in-style, React Free
Style, React Look, smart-css, Stillr, React Inline CSS, react-css builder, among
others.

READMORE

Unfortunately, we are still at the
chaotic phase where no library has emerged as the indisputable winner. The
good news, is we might be reaching the phase where just two are surfacing as the final contenders.
These two are Radium & CSS Modules.

![GitHub Stars Growth for React Style
Libraries](http://jgnatch-dropshare.s3.amazonaws.com/Screen-Shot-2016-02-24-16-18-36.png)

*Chart 1: Growth of GitHub stars over time for libraries to style React*

If we pay attention to this chart that shows the growth of GitHub stars over time 
for the competing libraries,
we can see that Radium is the one that has more stars but CSS Modules is getting
closer with a steeper growth curve. If we also count
the stars of react-css-modules, which is basically a specialized library of CSS
Modules for React, then CSS Modules easily surpasses Radium. 

Yes, I know... GitHub stars are pure vanity, but in these cases they might show
some trends. If we see the same chart with Flux libraries we can see that
the growth of GitHub stars over time clearly shows the evolution of the Flux
Wars and how Redux finally took over.

![GitHub Stars Growth of Flux
Libraries](/images/flux-growth-comparison.png)

*Chart 2: Growth of GitHub stars over time for flux libraries*

## So which Styles library should I choose?
Both Radium & CSS Modules are great libraries and either of those will be light
years better that continuing with regular CSS.

If I had to choose I'd go with CSS Modules🏆. In my opinion, CSS Modules is one
of those little elegant ideas that have immense power. CSS Modules is based on
just two simple concepts: Local by default styles and composing styles. 
It lets you keep the things you like and are used to on CSS but with a much more
maintainable code. 

Another interesting point is that CSS Modules is less coupled to React than
Radium. You can use it with Angular or with any other JS Frameworks. There's even 
a Work In Progress version of CSS Modules for Rails. 

To conclude, if you want to considerably improve your life when dealing with
styles, just go with CSS Modules.

You can see how it is used [here](https://github.com/css-modules/css-modules)
and [here's](https://github.com/css-modules/webpack-demo) an example repo of how can you 
set it up with React & Webpack.

I'll be writing about how CSS Modules is used and its advantages in much further
detail in the next few weeks. If you don't want to miss it just go and sign up to my
mailing list.

