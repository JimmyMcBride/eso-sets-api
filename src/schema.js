const typeDefs = `
  type Query {
    sets: [Set!]!
  }
  type Set {
    id: ID!
    name: String!
    type: String!
    bonuses: String!
  }
`;

module.exports = typeDefs;
