const { ApolloServer } = require("apollo-server-express");
const express = require("express");

const typeDefs = require("./schema");
const resolvers = require("./resolvers");
const db = require("./data/dbConfig");

require("dotenv").config();

const app = express();

const server = new ApolloServer({
  typeDefs,
  resolvers,
  introspection: true,
  playground: true,
  context: ({ req, res }) => ({
    req,
    res,
  }),
});

const welcomeMessage = `
<body style="display: flex; flex-direction: column; align-items: center;">
  <h1>Server is up and running!</h1>
  <p>ESO GQL API is located at <a href="/graphql">/graphql</a></p>
</body>
`;

app.get("/", async (_, res) => {
  res.send(welcomeMessage);
});

app.get("/sets", async (_, res) => {
  const sets = await db("sets").orderBy("name");
  res.status(200).json(sets);
});

app.get("/set/:name", async (req, res) => {
  const { name } = req.params;
  try {
    const set = await db("sets").where({ name }).first();
    if (!set) throw new Error("No set with that name can be found 🤷‍♂");
    res.status(200).json(set);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
});

server.applyMiddleware({
  app,
  cors: {
    credentials: false,
  },
});

const port = process.env.PORT;

app.listen(port, () => console.log(`\n** Running on port ${port} 🚀 **\n`));
