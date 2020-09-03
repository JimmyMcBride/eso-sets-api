const axios = require("axios");
const cheerio = require("cheerio");
// const db = require("./data/dbConfig");
const getSetData = require("./getSetData");

// const hideOfMorihaus = "https://en.uesp.net/wiki/Online:Hide_of_Morihaus";
// const graveGuardian = "https://en.uesp.net/wiki/Online:Grave_Guardian_(set)";
// const balorgh = "https://en.uesp.net/wiki/Online:Balorgh_(set)";
// const disciplinedSlash = "https://en.uesp.net/wiki/Online:Disciplined_Slash";
// const shacklebreaker = "https://en.uesp.net/wiki/Online:Shacklebreaker";

// const array = [
// hideOfMorihaus,
// graveGuardian,
// balorgh,
// disciplinedSlash,
// shacklebreaker,
// ];

const baseUrl = "https://en.uesp.net";
const url = "https://en.uesp.net/wiki/Category:Online-Sets";

async function main() {
  const { data } = await axios.get(url);
  const $ = cheerio.load(data);
  let offset = 0;
  $('h3:contains("B")')
    .next()
    .find("a")
    .each((_, el) => {
      const $el = $(el);
      console.log($el.attr("href"));
      setTimeout(() => {
        getSetData(baseUrl + $el.attr("href"));
      }, 0 + offset);
      offset += 3000;
    });
  // console.log(row);

  // array.forEach((url) => {

  // });
}

main();
