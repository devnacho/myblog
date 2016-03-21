---
title: How Airbnb Uses React
layout: article
published: true
date: 2016-03-20 00:00 UTC
tags: react, large apps, business, airbnb
---
![](/images/airbnb-react.png)
React is used by a number of well-known companies with large applications that
cater to millions of users, and their code base is being constantly changed by
engineers.

A wide range of articles show how to create simple apps like ToDo lists with
React, but there aren’t many that show how React is used in production.

This is why I’ve been working on a series of interview articles that will show
how React is used in large apps.

In my first article, I had the honor of asking a couple of questions to [Leland
Richardson](https://github.com/lelandrichardson), Software Engineer at Airbnb,
and the main contributor to their React
Testing Library [Enzyme](https://github.com/airbnb/lelandricharson). Read on to
find out why they chose React, how they use
it, and what challenges they have encountered in the process.

READMORE

__How many people on your team work with React code?__

*"I would guess there are roughly 50-60 engineers at Airbnb that would interact
with React on a regular basis. Probably a few more on an irregular basis."*

__How do you get new developers to use your React app?__

*" 1. Airbnb has a 3 week ‘bootcamp”’process for new hires. This involves a lot
of different things, but among them is taking on (relatively) simple tasks and
submitting PRs to the code base for review, as well as several presentations
regarding our front-end infrastructure.*

*2. There are a number of employee-led classes that are held internally on a
regular basis, that both new and tenured engineers choose to attend.*

*3. Slack is often used as an ‘internal stack overflow.’ Lots of people are readily
willing to help when questions come up, and chat history is indexed and searchable,
which is surprisingly helpful.*

*4. Airbnb has a healthy culture of code review, which is also a great way to learn
new things, as well as level up as an engineer.&rdquo;*

__In your opinion, what are the biggest advantages of using React?__

*"Reusability/portability: React components are extremely reusable*

*Refactorability: React tends to make your code very easy to refactor and iterate on."*

__What are the biggest disadvantages/difficulties of using React?__

*"Many people who are new to React and the ‘React Ecosystem’ really struggle with
some of the concepts of state management in the context of a React app. Depending on
one’s background, it can be a very different way of thinking, and this is where I see
the most issues coming from."*

__How do you manage the state of your app? Any flux/redux library?__

*"We use [alt](https://github.com/goatslacker/alt), which was developed internally. We
may consider using redux in the near future."*

__Do you use Relay/GraphQL, Relay or something similar to get the data from your backend?__

*"Not at this time. We may end up taking some ideas from GraphQL/Relay and applying them
to our own internal API Infrastructure, though."*

__Which JS syntax do you use? ES6?__

*"ES6. All new JavaScript code in our code base conforms to our [style guide](
https://github.com/airbnb/javascript)."*

__How do you test your React App?__

*"Primarily, we use the following libraries:*

*- Mocha: test runner*

*- Chai: assertion*

*- [Enzyme](https://github.com/airbnb/enzyme): React testing library."*

__Which JS Bundler do you use?__

*"We use an internally built asset bundler, which uses Browserify internally."*

__Do you use any particular coding tool that the rest of the community might find interesting?__

*"We have many linting rules that apply to our infrastructure internally,
and that help prevent common mistakes. They don’t apply to the community,
but I think everyone should learn how to write linting rules. They are
quite useful.*

*There are some tools (such as our build tool) that we would like to open
source, but nothing else that I can say at this time."*

__How do you manage Styles?__

*"Right now we use SCSS to compile CSS, so pretty much just ‘good old regular CSS.’
We are investigating whether or not there is a component-based style solution
that makes sense for us."*

__Do you enforce type with things like Flow or Typescript?__

*"Not at this time."*

__Which library you use for routing?__

*"We have several internal apps and sections of the site that use react-router.
However, most of our app does not use any JavaScript-based router."*

__Do you use, or plan to use React Native?__

*"We are currently exploring using React Native for some features on our main App.
We have used it in other places, but never on anything public."*

Airbnb is far from the only large application that uses React. In our next post in this series, we’ll chat with a top developer from another successful company, who will be providing his insights and experience with this technology. Stay tuned!
