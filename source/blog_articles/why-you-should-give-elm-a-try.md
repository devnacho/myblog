---
title: Why You Should Give Elm a Try
layout: article
published: false
date: 2016-04-12 00:00 UTC
tags: elm, react, languages, front end
---
![](/images/elm.png)
I've been working with React for quite a long time now, creating apps of all
sizes for several clients. I think React was one of the major breakthroughs in
frontend in the past years, and it brought the joy back to creating interesting and complex UIs.

A couple of months ago, a friend of mine who also uses React recommended me Elm.
I also started to notice it was mentioned in several blog posts, in the docs
of Redux and in some conferences such as the Reactive Conf or The React Conf
2016. Something interesting to remark is that "Rethinking Best Practices with
Elm" was the only non-React or React Native talk in the whole conference.

READMORE

For the ones who don't know Elm, Elm is a functional programming language that
compiles to JS, HTML & CSS and one of the bigger selling points is that they
promise no runtime exceptions and a happy and easy front end developing
experience. The idea is to solve Javascript's lack of maintainability and
hard-to-catch production errors.

At first, the syntax drove me off, and I left it in the back of my mind for a
couple of weeks. But one day, I saw this talk by Richard Feldman called "Make
the Back-End Team Jealous: Elm in Production" and it got me immediately hooked.

I saw a couple of videos more, and I started playing around coding the
obligatory ToDo List app, and then a couple of harder things like making my Elm
app talk with a JSON API.

## What did I learn?

I really enjoyed using Elm, and I learned it has all the best practices being
used lately in React/Redux baked right into the language – instead of having to
use libraries to apply them. This leads to simpler application development and
fewer chances of writing bad code. These features are:

- Every value is immutable, meaning it cannot be changed once created. Instead
  of mutating data it always transforms it into something new.

- Every function is pure. This means that given the same input the function will
  result in the same output, and will not have side-effects. 

- It is strongly typed. This doesn't mean you have to annotate every type in
  your code. Elm will infer the types on compile time. This is one of the things
that guarantees Elm's promise of "If it compiles, you won't have runtime
errors."

- The compiler has the friendliest error messages ever. There's even a dedicated
  Github repo where the community can provide feedback and improve the quality
and helpfulness of the compiler error messages.

- You won't practically need to debug with the console again. At first, it was
  quite weird not to do "Console Debugging Driven Development" like we do with
JS but then it felt wonderful.

- Null value doesn't exist in Elm so, forget about having "undefined is not a
  function errors." 

- The way to architect Elm applications is called "The Elm Architecture", and if
  you have used Redux in the past, you will get it in 2 minutes. This is no
coincidence as Dan Abramov, the creator of Redux, says that Elm was one of the
things he got inspiration from when creating Redux.

After two weeks overcoming the learning curve of learning an entirely new
language, the developing experience was outstanding. But the question left to be
answered is:

## Is Elm Ready for Production?
Well, this depends on all sorts of factors. Several companies are using it in
production – and they seem to be quite satisfied. So, we could say it is ready
for production but of course, there are some risks and disadvantages if you
adopt it now: 

- The community is quite small. Although it is extraordinarily active and
  growing at a fast pace, attracting devs who use React/Redux due to the
similarity on both architectures. 

- You will not have the all the libraries you have with JS. Though if there's a
  JS library you need to use, you can do it because your Elm code can
communicate with Javascript thanks to Elm's ports feature.

- Recruiting Elm developers is harder than JS developers. On the other hand,
  someone coming from React will have a shallow learning curve.

## So, Why should I give it a try?

These are some of my reasons:

- It's good to always be learning new and different things.

- It will broaden your perspective.

- It is useful to have more tools available in case you need them for a project
  in the future.

- You can bring ideas from your learning experience to your everyday programming
  language.

- If you don't come from a functional programming background, it will help you
  understand the paradigm in an easy way.

I will keep progressing with this language and intend to use it on some of my
side projects and I hope you give it a try. 

Let me know if you have any questions or if you need help. 

I'll keep writing about React & React Native &#10084; and every so often will probably write
about my progress with Elm and the exciting things I find out.





