---
title: How to add If-Else statements in JSX?
layout: article
published: true
date: 2016-02-15 00:00 UTC
tags: react, if, else, jsx, conditionals
---

I know this sounds easy but I've seen this question being repeated several times
in stackoverflow, the reactiflux chat or the react subreddit.

> "I'm trying to do a simple If/Else in JSX but for some reason I can't make it
> work"


> "I feel dumb asking about this but what is the best way to write an if-else in
> JSX"

I understand this feeling as learning React was quite easy for me but for a long period of time
I wasn't sure which was the best way to write simple If/Else statements inside JSX.

Every time I needed to write conditionals I would do it in a different way and I
would feel frustrated because I wasn't consistent.

Here are some different ways you can write If/Else conditionals in React:
READMORE

### Option 1:
In this example you can do the If-Else by doing it all Js and assigning the JSX
blocks to a variable. I like this approach because it keeps the `return` section
pretty clean.

```language-js
class HelloMessage extends React.Component {
  render (){
    let userMessage;
    if (this.props.loggedIn) {
      userMessage = (
        <span>
          <h2>{ `Welcome Back ${ this.props.name }` }</h2>
          <p>You can visit settings to reset your password</p>
        </span>
      )
    } else {
      userMessage = (
        <h2>Hey man! Sign in to see this section</h2>
      )
    }
    return(
      <div>
        <h1>My Super React App</h1>
        { userMessage }
      </div>
    )
  }
}
```

### Option 2: 
Often times to keep the `render` function clean I separate the conditional in a
different function that handles the If-Else.

```language-js
class HelloMessage extends React.Component {

  renderUserMessage(){
    if (this.props.loggedIn) {
      return (
        <span>
          <h2>{ `Welcome Back ${ this.props.name }` }</h2>
          <p>You can visit settings to reset your password</p>
        </span>
      );
    } else {
      return (
        <h2>Hey man! Log in to see this section</h2>
      );
    }
  }
  
  render (){        
    return(
      <div>
        <h1>My Super React App</h1>
        { this.renderUserMessage() }
      </div>
    )
  }
}
```

### Option 3: 
For smaller stuff I usually prefer to do it inline with the ternary operator
inside the JSX block.

```language-js
class HelloMessage extends React.Component {
  render (){        
    return(
      <div>
        <h1>
          { this.props.loggedIn ?  'You are logged In' : 'You are not logged In' }
        </h1>
      </div>
    )
  }
}
```

### Option 4: 
If you are a big fan of keeping things inline you can even use it for bigger JSX
blocks. In my opinion this way isn't super clear visually so I don't use it as
much.

```language-js
class HelloMessage extends React.Component {
  render (){
    return(
      <div>
        <h1>My Super React App</h1>
        { this.props.loggedIn ?
            <span>
              <h2>{ `Welcome Back ${ this.props.name }` }</h2>
              <p>You can visit settings to reset your password</p>
            </span>
            :
            <h2>Hey man! Log in to see this section</h2>
        }
      </div>
    )
  }
}
```

### So which option should I choose then?
As you can see there isn't just one way to do it, it's a matter of style,
context and personal preference. Feel free to use the one that suits your coding style and
make sure you and your team agree on the style that is better for your current
project.

I usually write my IF-Else statements like the option 2 and only when is
something really really simple I go with the option 3 one-liner.

But how about you? How do you write your IF-Else statements inside JSX? Tweet me
at [@devnacho](http://twitter.com/devnacho) and let me know!

Did you like this post? Sign up below to my email list and receive more content
like this.



