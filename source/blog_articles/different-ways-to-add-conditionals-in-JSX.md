---
title: How to add If-Else statements in JSX?
layout: article
published: false
date: 2016-02-15 00:00 UTC
tags:
---

If you already know how to do this you might probably want to skip this post. 

I know this sounds easy but I've seen this question being repeated several times
in stackoverflow, the reactiflux chat  or the react subreddit.

> "Im trying to do a simple If/Else in JSX but for some reason I can't make it
> work"

> "I feel dumb asking about this but what is the best way to write an if-else in
> JSX"

I understand this feeling as learning React was quite easy for me but for a long period of time
I wasn't sure which was the best way to write a simple If/Else statement inside JSX.

In the beginning, every time I needed to write it I would do it in a different way and I
would feel frustrated that I didn't know which was the best way to do it.

It turns out there isn't just one way to do it so you shouldn't feel frustrated.
It's a matter of style personal preference depending on the context.
READMORE

Here are some different ways you can write If/Else conditionals in React:

### Option 1:

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
```language-js
class HelloMessage extends React.Component {
  render (){        
    return(
      <div>
        <h1>
          { this.props.loggedIn ?  
              'You are logged In' :  
              'You are not logged In' 
         }
        </h1>
      </div>
    )
  }
}
```

### Option 4: 

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
Closing Thoughts here.
CALL TO ACTION HERE

