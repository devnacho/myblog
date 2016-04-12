---
title: Why You Should Give Elm a Try
layout: article
published: true
date: 2016-04-12 00:00 UTC
tags: elm, react, languages, front end
---
![](/images/elm.png)

I’ve been working with React for quite a while now, creating apps of all sizes
for several clients. In my opinion, React was one of the major breakthroughs in
front-end web development, and it has brought the joy back to creating
interesting and complex UIs in the past few years.

A couple of months ago, a friend of mine who also uses React recommended Elm to
me. That was when I noticed it was mentioned in several blog posts, in the docs
of Redux and in a number of conferences such as the Reactive Conf or the React
Conf 2016. One thing of note is that “Rethinking All Practices: Building
Applications in Elm” was the only non-React or React Native talk in the whole conference.

For those who don’t know Elm, Elm is a functional programming language that
compiles to JS, HTML & CSS, and one of the biggest selling points is that the
language guarantees no runtime exceptions and an easy front-end development
experience. The idea is to provide a solution to Javascript’s lack of
maintainability and hard-to-catch production errors.

At first, the syntax drove me off, and I left it at the back of my mind for a
couple of weeks. But one day, I saw this talk by Richard Feldman called “Make
the Back-End Team Jealous: Elm in Production,” and it hooked me immediately.

I saw a couple more videos, and then I started playing around coding the
obligatory ToDo List app. Then I focused on some harder things like making my
Elm app talk with a JSON API.

## What did I learn?

I really enjoyed using Elm, and I learned it has all the best practices of
React/Redux included right in the language – without any need to use libraries
to apply them. This leads to simpler application development, making it much
less likely that you will write bad code. Here are the features:

- Every value is immutable, meaning it cannot be changed once it’s created.
  Instead of mutating data, it transforms it into something new.

- Every function is pure. This means that with the same input, the function will
result in the same output, and it will not have side effects.

- It is strongly typed. This doesn’t mean that you have to annotate every type in
your code. Elm will infer the types on compile time. This helps guarantee Elm’s
promise that “If it compiles, you won’t have runtime errors.”

- The compiler has the friendliest error messages ever. There’s even a dedicated
Github repo where the community can provide feedback and improve the quality and
helpfulness of the compiler error messages.

- You will hardly ever need to debug with the console again. At first, it was
quite weird not to do “Console Debugging Driven Development” like we do with JS,
but then it felt fantastic.

- Null value doesn’t exist in Elm, so forget about “undefined is not a function”
errors.

- The way to architect Elm applications is called “The Elm Architecture,” and if
you have used Redux in the past, you will get it in just two minutes. This is no
coincidence, as Dan Abramov, the creator of Redux, says that Elm was one of his
sources of inspiration when he created Redux.

After two weeks of overcoming the learning curve of picking up an entirely new
language, the developing experience was outstanding. But the question left to be
answered is this:

## Is Elm ready for production?

Well, this depends on all sorts of factors. Several companies are using it in
production – and they seem to be quite satisfied. So, we could say that yes, it
is ready for production. However, there are some risks and disadvantages to
adopting it now:

- The community is quite small, although it is extraordinarily active and growing
at a fast pace. Elm is attracting devs who use React/Redux due to the similarity
of both architectures.

- You will not have all the libraries you have with JS. However, if there’s a JS
library you need to use, your Elm code can communicate with Javascript thanks to
Elm’s ports feature.

- Recruiting Elm developers is harder than recruiting JS developers. On the other
hand, those who come from React will have a shallow learning curve.

## So, why should I give it a try?

These are some of my reasons:

- It’s good to learn new and different things.

- It will broaden your perspective.

- It is useful to have more tools available in case you need them for a project in
the future.

- You can incorporate ideas from your learning experience into your everyday
programming language.

- If you don’t come from a functional programming background, it will help you
understand this paradigm in an easy way.

I will keep progressing with this language and intend to use it on some of my
side projects. I hope you will give it a try.

Let me know if you have any questions or if you need help.

I’ll keep writing about React & React Native ❤, and every so often I will
write about my progress with Elm and the exciting things I find out.


### Here are some talks so you can get excited about Elm

_"Make the Back-End Team Jealous: Elm in Production" by Richard Feldman_

<iframe width="560" height="315"
src="https://www.youtube.com/embed/FV0DXNB94NE?rel=0" frameborder="0"
allowfullscreen></iframe>

<br/>
_"Rethinking All Practices: Building Applications in Elm" by Jamison Dance_

<iframe width="560" height="315"
src="https://www.youtube.com/embed/txxKx_I39a8?rel=0" frameborder="0"
allowfullscreen></iframe>

<br/>
_"Introduction to Elm" by Richard Feldman_

<iframe width="560" height="315"
src="https://www.youtube.com/embed/3_M2G9U51GA?rel=0" frameborder="0"
allowfullscreen></iframe>
