---
title: Will I have performance issues when my Redux state object becomes very large?
layout: article
published: true
date: 2016-02-16 00:00 UTC
tags: react, redux, performance
---

If you’ve used different flux alternatives in the past – with the state of your
application spread across multiple stores – you may think the way Redux manages
your app in just one object would bring about performance issues, especially as
the object becomes increasingly large.

I had the same doubts, and I have seen quite a few people ask the same question.
Even Dan Abramov, the creator of Redux, addressed the subject. Check out what he
had to say [here](https://twitter.com/dan_abramov/status/684074628227182592).

### So... am I going to have performance issues with a large state?

The short answer is no. 

It’s a common misconception that the state is held in a gigantic object.
Remember that in Javascript, objects are passed by reference.

READMORE

In the following example, you will see that it doesn’t matter whether the object
has many levels. It isn’t a huge object — it’s an object with just three keys
that reference other objects, and those objects reference other objects too.

```language-js
{ 
  messages: {
    list: []
    lastRead: "",
  },
  tasks: {
    list: []
  },
  currentUser: {
    id: "123",
    name: "John Doe",
    profilePicture: {
      thumbUrl: "http://lorempixel.com/120/120/",
      profileUrl: "http://lorempixel.com/120/120/",
    }
  }
}
```

If you debug this object you would see:

```language-js
{ 
  messages: Object,
  tasks: Object,
  currentUser: Object,
}
```


If you are still worried that Redux will copy the state excessively each time
you change it, and hurt your memory performance as a result, use immutable data
structures like Immutable JS.

This will ensure that objects are immutable and can be “copied” by simply making
another reference to them, rather than by copying the entire object. Remember
that a reference is much smaller than the object itself, which will help you
save memory.

The good thing is that Redux makes no assumptions about the type of state you
return from the reducer. You can use plain objects or immutable data structures.

90% of apps will never face these kinds of performance problems. But before you
resort to overengineering, it’s better to think about how large your app will
become. If you are sure your app will have a “big” state, you may want to do a
stress test before you jump the gun on these performance optimizations.

In other cases, it’s better to avoid worrying about this until it has actually
become a problem – and it may never become a problem.

**Did this article help you? If it did, join my mailing list below. That way
you’ll receive more articles just like this one.**




