---
title: How to Give Relay and GraphQL a Try — Part 1 of 3
layout: article
published: true
date: 2016-04-26 00:00 UTC
tags: React, GraphQL, Relay
---

Ever since Facebook open-sourced Relay, I've wanted to try it out. The thing is,
I never had enough time to set up all the things I needed: the backend server,
the GraphQL configuration, the schema, the database, the endpoints, etc. There
were just too many things to do!

I even hesitated over whether I had to do the [backend in Ruby on Rails](https://github.com/rmosolgo/graphql-relay-ruby), which is
what I've been using on the backend for years, or on something like Express with
this [starter kit](https://github.com/relayjs/relay-starter-kit). Every time, I concluded that I should do the backend in Ruby,
as that is what I would use if a new project were to pop up with this stack. The
problem is that I ended up doing nothing.

READMORE

## What Is the Easiest Way to Give Relay a Try?

The good news is that there is a simple way to try Relay:
[Reindex](https://www.reindex.io). Reindex is a
platform that provides a GraphQL backend as a service.

I don't have any affiliation or relationship with the product, but I think it's
an excellent idea that makes rapid prototyping with React and Relay much
friendlier.

In this three-part article, we will build a small React App that uses Relay and
GraphQL. It will be organised in the following way:

- Part 1: We will create a simple GraphQL backend server using Reindex. Then we
will define a simple schema and play around with GraphQL to understand queries
and mutations.

- Part 2: We will code a basic React app that connects to the GraphQL server using
Relay. It also fetches the data and displays it in the different components.

- Part 3: To complete this tutorial, we will add mutations to our React/Relay app.

## What Is GraphQL?

Basically, GraphQL is a data query language that queries and mutates data. The
client sends a GraphQL query, and then the GraphQL server interprets the query
and responds with a JSON.

The most important part of the process is that the client declares the structure
of the GraphQL server response. This means that the client not only asks for
data, but also specifies how the data should look.

## What Is Relay?

Relay is a JavaScript application framework that communicates with a GraphQL
server. The main thing with Relay is that each React component defines the data
it needs in a declarative way.

## Setup

You will have to clone this repository first.

```language-bash
$ git clone git@github.com:devnacho/reindex-starter-kit-react.git

$ cd /reindex-starter-kit-react

```

Next, you will install all the libraries and the Reindex Command Line Interface
tool.

```language-bash
$ npm install
$ npm install -g reindex-cli
```

Then, go to [http://reindex.io](http://reindex.io) and create an account. It's free!

Once you have installed everything and created an account, you will have to log
in to Reindex on the console. You will be asked to provide the URL and access
token for your Reindex app.

```language-bash
$ reindex login
Reindex URL: https://YOUR-REINDEX-APP.myreindex.com
Reindex Token: YOUR-REINDEX-TOKEN
```

Open src/config.js with your editor and enter the URL of your Reindex app.

```language-js
// src/config.js

export default {
  REINDEX_URL: 'YOUR_REINDEX_APP_URL',
};
```

The setup is now complete!

## Defining the Schema

In this example app, we will have a simple schema made of Books and Authors.

- An `Author` has many `Book`s.
- A `Book` belongs to one `Author`.
- A `Book` has a unique `id`, a `title`, an `inStock` field and the relation with its `Author`.
- An `Author` has a unique `id`, a `fullName` and `Book`s.

First you will fetch the pre-defined Reindex schema by running:

```language-bash
$ reindex schema-fetch
```

The pre-defined Reindex schema comes with a pre-defined user object. We could
remove this by making a migration, but we will just leave it there to make this
tutorial easier.

Open ReindexSchema.json with your preferred editor and change it so it looks
like this:

```language-js
// ReindexSchema.json
[
  {
    name: "User",
    kind: "OBJECT",
    interfaces: [
      "Node"
    ],
    fields: [
      {
        name: "id",
        type: "ID",
        nonNull: true,
        unique: true
      }
    ]
  },
  {
    name: "Book",
    kind: "OBJECT",
    interfaces: [
      "Node"
    ],
    fields: [
      {
        name: "id",
        type: "ID",
        nonNull: true,
        unique: true
      },
      {
        name: "title",
        type: "String"
      },
      {
        name: "inStock",
        type: "Boolean"
      },
      {
        name: "author",
        type: "Author",
        reverseName: "books"
      },
    ]
  },
  {
    name: "Author",
    kind: "OBJECT",
    interfaces: [
      "Node"
    ],
    fields: [
      {
        name: "id",
        type: "ID",
        nonNull: true,
        unique: true
      },
      {
        name: "fullName",
        type: "String"
      },
      {
        name: "books",
        type: "connection",
        ofType: "Book",
        reverseName: "author"
      },
    ]
  }
]
```

Once you’ve defined the schema, you will upload it back to Reindex running.

```language-bash
$ reindex schema-push
```

## Adding Data

One thing I really like about Reindex is that they have GraphiQL integrated.
GraphiQL is an interactive console in the browser that will let you run queries
and mutations.

```language-bash
$ reindex graphiql
```

Reindex also provides all CRUD operations for the types of data you defined in
your schema.

First, you'll add some authors by running mutations on GraphiQL.

```language-js
mutation AddAuthor {
  createAuthor(input: { fullName: "Jorge Luis Borges" }) {
    changedAuthor {
      id
      fullName
    }
  }
}
```

```language-js

mutation AddAuthor {
  createAuthor(input: { fullName: "Haruki Murakami" }) {
    changedAuthor {
      id
      fullName
    }
  }
}
```

See all Authors by running this query.

```language-js
{
  viewer {
    allAuthors {
      nodes {
        id
        fullName
      }
    }
  }  
}
```

Now you will add Books. It's important that you replace the Author field with
the corresponding IDs that were automatically generated by Reindex in the
createAuthor mutations executed before.

```language-js
mutation AddBook {
  createBook(input: { title: "El Aleph", inStock: true, author: "QXV0aG9yOjU3MTllZTAwYTViY2JmMDMwMGQyNzc5MQ"  }) {
    changedBook {
      id
      title
      inStock
      author{
        fullName
      }
    }
  }
}
```

```language-js
mutation AddBook {
  createBook(input: { title: "Ficciones", inStock: false, author: "QXV0aG9yOjU3MTllZTAwYTViY2JmMDMwMGQyNzc5MQ"  }) {
    changedBook {
      id
      title
      inStock
      author{
        fullName
      }
    }
  }
}
```

```language-js
mutation AddBook {
  createBook(input: { title: "Tokio Blues", inStock: true, author: "QXV0aG9yOjU3MTllZTEzYTViY2JmMDMwMGQyNzc5Mg"  }) {
    changedBook {
      id
      title
      inStock
      author{
        fullName
      }
    }
  }
}
```

```language-js
mutation AddBook {
  createBook(input: { title: "1Q84", inStock: true, author: "QXV0aG9yOjU3MTllZTEzYTViY2JmMDMwMGQyNzc5Mg"  }) {
    changedBook {
      id
      title
      inStock
      author{
        fullName
      }
    }
  }
}
```

Now we can run queries to see all the things we’ve added and their relation.

List Books and Authors’ names:

```language-js
{
  viewer {
    allBooks {
      nodes {
        id
        title
        inStock
        author {
          fullName
        }
      }
    }
  }  
}
```

List all Authors and their Books.

```language-js
{
  viewer {
    allAuthors{
      nodes{
        id
        fullName
        books{
          nodes{
            id
            title
            inStock
          }
        }
      }
    }
  }
}
```

## Editing Data

Update a Book inStock field by running this mutation:

```language-js
mutation {
  updateBook(input: 
    {
      id: "THE_ID_OF_THE_BOOK_YOU_WANT_TO_CHANGE"
      inStock: false
    }
  ) 
  {
    changedBook {
      id
      title
      inStock
    }
  }
}
```

Update an Author fullName field by running this mutation:

```language-js
mutation {
  updateAuthor(input: 
    {
      id: "QXV0aG9yOjU3MTlmZDg1YTViY2JmMDMwMGQyNzc5YQ"
      fullName: "Jorge Francisco Isidoro Luis Borges Acevedo"
    }
  ) 
  {
    changedAuthor {
      id
      fullName
    }
  }
}
```

## Deleting Data

Delete Books running the following mutation:

```language-js
mutation {
  deleteBook(input: {
    id: "SOME_BOOK_ID"
  }) 
  {
    # Will contain deleted object
    changedBook {
      id
      title
    }
  }
}
```

## Congratulations! You Now Have a Working GraphQL Server.

I hope this first part helped you create a GraphQL server, and that you got a
basic idea of how GraphQL queries and mutations work. On the next two parts of
this series, we will delve into Relay and see how we can integrate what we did
in this part with a React application.

What about you? Do you use Relay? Do you know of any other simple ways to try it
out?

Tweet me your GraphQL/Relay experience at
[@devnacho](http://twitter.com/devnacho)!

If you found this article interesting, sign up to my mailing list below. That
way you won’t miss the next two parts!

