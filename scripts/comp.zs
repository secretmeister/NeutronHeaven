<recipetype:pneumaticcraft:pressure_chamber>.remove(<item:pneumaticcraft:compressed_stone>);
<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("bettgunp",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
      {"item": "minecraft:sand"}],
  "pressure": 0.75,
  "results": [
    {"item": "minecraft:gunpowder","count": 2}]});
<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("stone2",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
    {
      "tag": "crafttweaker:stone"
    }
  ],
  "pressure": 1.0,
  "results": [
    {
      "item": "pneumaticcraft:compressed_stone"
    }]});