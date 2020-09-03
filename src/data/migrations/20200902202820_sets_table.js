exports.up = function (knex) {
  return knex.schema.createTable("sets", (tbl) => {
    tbl.increments();
    tbl.text("name").notNullable();
    tbl.text("type").notNullable();
    tbl.text("weight").notNullable();
    tbl.text("bonuses").notNullable();
  });
};

exports.down = function (knex) {
  return knex.schema.dropTableIfExists("sets");
};
