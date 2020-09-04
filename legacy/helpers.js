function spanWrapper(string) {
  return (
    string
      .replace(/Maximum\sHealth/g, "<span class='health'>Maximum Health</span>")
      .replace(/Healing\sTaken/g, "<span class='health'>Healing Taken</span>")
      .replace(
        /Health\sRecovery/g,
        "<span class='health'>Health Recovery</span>"
      )
      .replace(
        /Maximum\sStamina/g,
        "<span class='stamina'>Maximum Stamina</span>"
      )
      .replace(
        /Stamina\sRecovery/g,
        "<span class='stamina'>Stamina Recovery</span>"
      )
      .replace(
        /Maximum\sMagicka/g,
        "<span class='magicka'>Maximum Magicka</span>"
      )
      .replace(
        /Magicka\sRecovery/g,
        "<span class='magicka'>Magicka Recovery</span>"
      )
      .replace(
        /Physical\sResistance/g,
        "<span class='p-resist'>Physical Resistance</span>"
      )
      .replace(
        /Spell\sResistance/g,
        "<span class='s-resist'>Physical Resistance</span>"
      )
      // .replace(
      //   /Physical\sPenetration/g,
      //   "<span class='p-pen'>Physical Penetration</span>"
      // )
      .replace(/Weapon\sDamage/g, "<span class='weapon'>Weapon Damage</span>")
      .replace(
        /Weapon\sCritical/g,
        "<span class='weapon'>Weapon Critical</span>"
      )
      // .replace(
      //   /Spell\sPenetration/g,
      //   "<span class='s-pen'>Physical Penetration</span>"
      // )
      .replace(/Spell\sDamage/g, "<span class='spell'>Spell Damage</span>")
      .replace(/Spell\sCritical/g, "<span class='spell'>Spell Critical</span>")
      .replace(/Major\sAegis/g, "<span class='buff'>Major Aegis</span>")
      .replace(/Minor\sAegis/g, "<span class='buff'>Minor Aegis</span>")
      .replace(/Major\sBerserk/g, "<span class='buff'>Major Berserk</span>")
      .replace(/Minor\sBerserk/g, "<span class='buff'>Minor Berserk</span>")
      .replace(/Major\sBrutality/g, "<span class='buff'>Major Brutality</span>")
      .replace(/Minor\sBrutality/g, "<span class='buff'>Minor Brutality</span>")
      .replace(/Major\sCourage/g, "<span class='buff'>Major Courage</span>")
      .replace(/Minor\sCourage/g, "<span class='buff'>Minor Courage</span>")
      .replace("Empower", "<span class='buff'>Empower</span>")
      .replace(/Major\sEndurance/g, "<span class='buff'>Major Endurance</span>")
      .replace(/Minor\sEndurance/g, "<span class='buff'>Minor Endurance</span>")
      .replace(/Major\sEvasion/g, "<span class='buff'>Major Evasion</span>")
      .replace(/Minor\sEvasion/g, "<span class='buff'>Minor Evasion</span>")
      .replace(
        /Major\sExpedition/g,
        "<span class='buff'>Major Expedition</span>"
      )
      .replace(
        /Minor\sExpedition/g,
        "<span class='buff'>Minor Expedition</span>"
      )
      .replace(/Major\sForce/g, "<span class='buff'>Major Force</span>")
      .replace(/Minor\sForce/g, "<span class='buff'>Minor Force</span>")
      .replace(/Major\sFortitude/g, "<span class='buff'>Major Fortitude</span>")
      .replace(/Minor\sFortitude/g, "<span class='buff'>Minor Fortitude</span>")
      .replace(/Major\sGallop/g, "<span class='buff'>Major Gallop</span>")
      .replace(/Minor\sGallop/g, "<span class='buff'>Minor Gallop</span>")
      .replace(/Major\sHeroism/g, "<span class='buff'>Major Heroism</span>")
      .replace(/Minor\sHeroism/g, "<span class='buff'>Minor Heroism</span>")
      .replace(/Major\sIntellect/g, "<span class='buff'>Major Intellect</span>")
      .replace(/Minor\sIntellect/g, "<span class='buff'>Minor Intellect</span>")
      .replace(/Major\sMending/g, "<span class='buff'>Major Mending</span>")
      .replace(/Minor\sMending/g, "<span class='buff'>Minor Mending</span>")
      .replace(/Major\sProphecy/g, "<span class='buff'>Major Prophecy</span>")
      .replace(/Minor\sProphecy/g, "<span class='buff'>Minor Prophecy</span>")
      .replace(
        /Major\sProtection/g,
        "<span class='buff'>Major Protection</span>"
      )
      .replace(
        /Minor\sProtection/g,
        "<span class='buff'>Minor Protection</span>"
      )
      .replace(/Major\sResolve/g, "<span class='buff'>Major Resolve</span>")
      .replace(/Minor\sResolve/g, "<span class='buff'>Minor Resolve</span>")
      .replace(/Major\sSavagery/g, "<span class='buff'>Major Savagery</span>")
      .replace(/Minor\sSavagery/g, "<span class='buff'>Minor Savagery</span>")
      .replace(/Major\sSlayer/g, "<span class='buff'>Major Slayer</span>")
      .replace(/Minor\sSlayer/g, "<span class='buff'>Minor Slayer</span>")
      .replace(/Major\sSorcery/g, "<span class='buff'>Major Sorcery</span>")
      .replace(/Minor\sSorcery/g, "<span class='buff'>Minor Sorcery</span>")
      .replace(/Major\sToughness/g, "<span class='buff'>Major Toughness</span>")
      .replace(/Minor\sToughness/g, "<span class='buff'>Minor Toughness</span>")
      .replace(/Major\sVitality/g, "<span class='buff'>Major Vitality</span>")
      .replace(/Minor\sVitality/g, "<span class='buff'>Minor Vitality</span>")
      .replace(/Major\sBreach/g, "<span class='debuff'>Major Breach</span>")
      .replace(/Minor\sBreach/g, "<span class='debuff'>Minor Breach</span>")
      .replace(
        /Major\sCowardice/g,
        "<span class='debuff'>Major Cowardice</span>"
      )
      .replace(
        /Minor\sCowardice/g,
        "<span class='debuff'>Minor Cowardice</span>"
      )
      .replace(/Major\sDefile/g, "<span class='debuff'>Major Defile</span>")
      .replace(/Minor\sDefile/g, "<span class='debuff'>Minor Defile</span>")
      .replace(
        /Major\sEnervation/g,
        "<span class='debuff'>Major Enervation</span>"
      )
      .replace(
        /Minor\sEnervation/g,
        "<span class='debuff'>Minor Enervation</span>"
      )
      .replace(/Major\sFracture/g, "<span class='debuff'>Major Fracture</span>")
      .replace(/Minor\sFracture/g, "<span class='debuff'>Minor Fracture</span>")
      .replace(
        /Major\sHinderance/g,
        "<span class='debuff'>Major Hinderance</span>"
      )
      .replace(
        /Minor\sHinderance/g,
        "<span class='debuff'>Minor Hinderance</span>"
      )
      .replace(
        /Major\sLifesteal/g,
        "<span class='debuff'>Major Lifesteal</span>"
      )
      .replace(
        /Minor\sLifesteal/g,
        "<span class='debuff'>Minor Lifesteal</span>"
      )
      .replace(
        /Major\sMagickasteal/g,
        "<span class='debuff'>Major Magickasteal</span>"
      )
      .replace(
        /Minor\sMagickasteal/g,
        "<span class='debuff'>Minor Magickasteal</span>"
      )
      .replace(/Major\sMaim/g, "<span class='debuff'>Major Maim</span>")
      .replace(/Minor\sMaim/g, "<span class='debuff'>Minor Maim</span>")
      .replace(/Major\sMangle/g, "<span class='debuff'>Major Mangle</span>")
      .replace(/Minor\sMangle/g, "<span class='debuff'>Minor Mangle</span>")
      .replace(
        /Major\sUncertainty/g,
        "<span class='debuff'>Major Uncertainty</span>"
      )
      .replace(
        /Minor\sUncertainty/g,
        "<span class='debuff'>Minor Uncertainty</span>"
      )
      .replace(
        /Major\sVulnerability/g,
        "<span class='debuff'>Major Vulnerability</span>"
      )
      .replace(
        /Minor\sVulnerability/g,
        "<span class='debuff'>Minor Vulnerability</span>"
      )
      .replace("Armor", "<span class='armor'>Armor</span>")
  );
}

module.exports = { spanWrapper };
