const axios = require("axios");
const cheerio = require("cheerio");
const db = require("./data/dbConfig");

const url = "https://elderscrollsonline.wiki.fextralife.com/Sets";

async function getData() {
  const { data } = await axios.get(url);
  const $ = cheerio.load(data);
  const row = $('h2.titlearea:contains("All ESO Sets Alphabetical Order")')
    .next()
    .next();

  const setRoutes = [];

  row.find(".col-sm-3").each((_, element) => {
    const $element = $(element);
    $element.find(".wiki_link").each((_, el) => {
      const $el = $(el);
      setRoutes.push($el.attr("href"));
    });
  });

  console.log(setRoutes.length);
}

const testRoute =
  "https://elderscrollsonline.wiki.fextralife.com/Aegis+of+Galanwe+Set";

getSetData(testRoute);
// getData();
