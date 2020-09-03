const axios = require("axios");
const cheerio = require("cheerio");
const db = require("./data/dbConfig");
const { spanWrapper } = require("./helpers");

async function getSetData(url) {
  const { data } = await axios.get(url);
  const $ = cheerio.load(data);
  const firstP = $("#mw-content-text").find("p").first();

  const name = firstP.find("b").first().text();

  const links = firstP.find("a");

  const types = links.first().text().split(" ");

  for (let i = 0; i < types.length; i++) {
    types[i] = types[i][0].toUpperCase() + types[i].substr(1);
  }

  const type = types.join(" ");

  const weight =
    type === "Craftable Sets" || type === "Monster Helm Set"
      ? "Any"
      : type === "Asylum Weapons"
      ? "n/a"
      : links.last().text();

  // Wel will split and modify the bonuses and store them here
  const bonusArray = [];
  // This is where the first split and modifications occur for bonuses
  $('h3:contains("Bonuses")')
    .next()
    .each((_, el) => {
      let $el = $(el).text().split(" ");
      // console.log($el);
      const newEl = $el.map((string) => {
        if (string.includes("-")) {
          return string.split("-")[1];
        }
        return string.replace("items", "piece");
      });
      // pushing modded strings to array
      bonusArray.push(newEl.join(" "));
    });

  // we take that array and map through it for further modification
  const finalBonusArray = bonusArray.map((string) => {
    const arr = string.split(":");
    // we add new lines to the end of each string and flatten the array
    const newArr = arr
      .map((string) => {
        return string.split("\n");
      })
      .flat();
    // we take that new array and wrap it in html tags
    const newBonusArray = newArr.map((string) => {
      if (string.includes("piece")) {
        return `<strong>(${string})</strong>`;
      }
      const finalString = `<span>${string.trim()}</span><br>`;
      // span wrappers gives certain key words spans with appropriate classes
      return spanWrapper(finalString);
    });
    return newBonusArray.join("\n");
  });

  // we join our final bonuses array together to get one string
  const bonuses = finalBonusArray.join();

  try {
    const added = await db("sets")
      .insert({
        name,
        type,
        weight,
        bonuses,
      })
      .returning("*");
    console.log("Added:", added[0]);
    // process.exit(0);
  } catch (err) {
    console.log("Error message:", err.message);
    process.exit(1);
  }
}

module.exports = getSetData;
