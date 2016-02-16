---
title: Will I have performance issues when my redux state object becomes very large?
layout: article
published: false
date: 2016-02-16 00:00 UTC
tags: react, redux, performance
---

If you've used different flux alternatives in the past – having the state
of your application spread accross multiple stores – you might think redux's way
of managing all the state of your app in just one object would bring performance
issues as the object becomes large.

I had the same doubt and have seen a few people asking the same question. Even
Dan Abramov, the creator of Redux, addressed this question
[here](https://twitter.com/dan_abramov/status/684074628227182592).

### So... am I going to have performance issues with a large state?

The short answer is no. 

It's a misunderstanding that the state is held in a gigantic object.
Remember that in Javascript objects are passed by reference.

READMORE

In the following example you can see that it doesn't matter if the object has many 
levels. It isn't a huge object, it's an object with just 3 keys that reference to other 
objects and those object reference to other objects.

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


If you are still worried that by changing the state, redux will make excessive
copying of the state and hurt memory performance, you can avoid this by using 
immutable data structures like [Immutable JS](https://facebook.github.io/immutable-js/).

This way, objects are immutable and can be "copied" simply by making another reference
to it instead of copying the entire object. Because a reference is much smaller
than the object itself, this results in memory savings.

The good thing is that Redux makes no assumptions about the type of state
you return from the reducer. You can use plain objects or immutable data
structures.

Overall, 90% of the apps will never face this type of performance problems. Before
overengineering, it's better to think how large your app will become. If you are sure
your app will have a "big" state, you might want to do a stress test before
jumping early to these performance optimizations.

In any other case, it's better to avoid worrying
about this until it actually is a problem – which may never be.

**Did this article help you? If it did help you, join my mailing list below where I
send more articles like this one.**



