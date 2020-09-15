const axios = require("axios");
const cheerio = require("cheerio");
// const db = require("./data/dbConfig");
const getSetData = require("./getSetData");

const baseUrl = "https://eso-sets.com/";
const mainPage = "https://eso-sets.com/search?query=";

async function main() {
  const headers = {
    "User-Agent": "FireNinja",
  };
  const { data } = await axios.get(mainPage, { headers });
  const $ = cheerio.load(data);

  let offset = 0;
  $("table")
    .find("a")
    .each((_, el) => {
      const $el = $(el);
      // console.log("href:", $el.attr("href"));
      setTimeout(() => {
        getSetData($el.attr("href"));
      }, 0 + offset);
      offset += 2000;
      // getSetData($el.attr("href"));
    });
}

main();
