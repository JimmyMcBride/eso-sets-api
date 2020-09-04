const db = require("./data/dbConfig");

const resolvers = {
  Query: {
    sets: async () => {
      return await db("sets").orderBy("name");
    },
    set: async (_, { name }) => {
      return await db("sets").where({ name }).first();
    },
  },
};

module.exports = resolvers;
