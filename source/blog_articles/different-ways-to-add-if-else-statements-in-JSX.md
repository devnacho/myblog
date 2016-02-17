---
title: How to Add If…Else Statements in JSX
layout: article
published: true
date: 2016-02-15 00:00 UTC
tags: react, if, else, jsx, conditionals
---

I know this sounds easy, but I’ve seen this question several times in
stackoverflow, the reactiflux chat and the react subreddit.

> “I’m trying to write a simple If…Else statement in JSX, but for some reason I
> can’t make it work.”


> “I feel dumb asking this, but what is the best way to write an If…Else in JSX?”


I understand the uncertainty here, as learning React was quite easy for me, but
it took a long time before I knew the best way to write simple If…Else
statements in JSX.

Every time I needed to write a conditional, I would do it in a different way,
and I would feel frustrated by my inconsistency.

Here are some different ways you can write If…Else conditionals in React:
READMORE

### Option 1:
In this example, you can create the If…Else statement by doing it in all Js and
assigning the JSX blocks to a variable. I like this approach because it keeps
the return section pretty clean.

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
Oftentimes, to keep the render function clean, I separate the conditional in a
different function that handles the If…Else statement.

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
For smaller stuff, I usually prefer to do it inline with the ternary operator
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
If you are a fan of keeping things inline, you can even use this option for
bigger JSX blocks. In my opinion, this makes things somewhat unclear visually,
so I don’t use it as often.

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

### So, which option should I choose?
As you can see, there is more than one way to go about doing this. It’s all a
matter of style, context and personal preference. So, feel free to use the
option that suits your coding style, and make sure you and your team agree on
the style that is the best fit for your current project.

I usually rely on the second option to write my If…Else statements, although
I’ll consider the third option — the one-liner — when it's something extremely
simple.

How about you? How do you write your If…Else statements in JSX? Tweet me your
answer at @devnacho!

Did you like this post? Sign up to my email list below and receive more content
like this.



