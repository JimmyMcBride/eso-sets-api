# ESO Sets API

An open and public API for all the sets in Elder Scrolls Online. All sets and rights belong to Zenimax Online.

I build a front end set search tool. You can checkout, search, and filter through all the sets [here](https://eso-set-list.vercel.app/)!

## REST

You can get all sets with the route: [https://eso-sets.herokuapp.com/sets](https://eso-sets.herokuapp.com/sets)

To get a set by it's name: `https://eso-sets.herokuapp.com/set/:name`.

Example: [https://eso-sets.herokuapp.com/set/Zaan](https://eso-sets.herokuapp.com/set/Zaan)

## GraphQL

The graphql endpoint is: [https://eso-sets.herokuapp.com/graphql](https://eso-sets.herokuapp.com/graphql).

Example queries:

```graphql
query Sets {
  sets {
    id
    name
    type
    bonuses
  }
}

query Set {
  set(name: "Zaan") {
    id
    name
    type
    bonuses
  }
}
```

If you notice anything wrong or inaccurate, email me @ mcbride967@gmail.com or join my [discord server](https://discord.gg/4PCy4Bz).
