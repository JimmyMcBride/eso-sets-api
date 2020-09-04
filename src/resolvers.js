const db = require("./data/dbConfig");

const resolvers = {
  Query: {
    sets: async () => {
      return await db("sets").orderBy("name");
    },
  },
};

module.exports = resolvers;
