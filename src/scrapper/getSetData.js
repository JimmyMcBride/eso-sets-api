const axios = require("axios");
const cheerio = require("cheerio");
const db = require("../data/dbConfig");
const { spanWrapper } = require("./spanWrapper");

async function getSetData(url) {
  const headers = {
    "User-Agent": "FireNinja",
  };
  const { data } = await axios.get(url, { headers });
  const $ = cheerio.load(data);

  const tooltip = $(".set-tooltip-center");
  const name = $(".set-tooltip-setname").first().text();
  console.log("name:", name);
  const type = tooltip.find('span:contains("Type")').next().text();
  console.log("type:", type);

  const bonusData = tooltip
    .find('strong:contains("Set bonus")')
    .parent()
    .text()
    .replace("Set bonus", "")
    .split("\n")
    .filter((string) => string)
    .map((string) => {
      return string.trim();
    })
    .filter((string) => string)
    .join(" ")
    .split("(")
    .filter((string) => string)
    .map((string) => {
      const splitter = string.split(")");
      const piece = splitter[0];
      const bonus = splitter[1];
      const wrapped = spanWrapper(bonus);
      return `<strong>(${piece})</strong><span>${wrapped}</span><br>`;
    });

  console.log("bonuses:", bonusData.join(" "));

  try {
    const added = await db("sets")
      .insert({
        name,
        link: url,
        type,
        bonuses: bonusData.join(" "),
      })
      .returning("*");
    console.log("Added:", added[0]);
    // process.exit(0);
  } catch (err) {
    console.log("Error message:", err.message);
    process.exit(1);
  }
}

// getSetData("https://eso-sets.com/set/chaotic-whirlwind");
// getSetData("https://eso-sets.com/set/adept-rider");
module.exports = getSetData;
