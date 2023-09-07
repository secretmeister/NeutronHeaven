<recipetype:pneumaticcraft:pressure_chamber>.remove(<item:pneumaticcraft:compressed_stone>);

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
<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("lavquar",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
    {
      "item": "botania:quartz_mana"
    },
    {
      "item": "minecraft:purple_dye"
    }
  ],
  "pressure": 5,
  "results": [
    {
      "item": "botania:quartz_lavender"
    }]});

<recipetype:pneumaticcraft:fluid_mixer>.addJsonRecipe("netherwart",    {
  "type": "pneumaticcraft:fluid_mixer",
  "input1": {
    "type": "pneumaticcraft:fluid",
    "fluid": "tconstruct:blood",
    "amount": 125
  },
  "input2": {
    "type": "pneumaticcraft:fluid",
    "fluid": "tconstruct:mushroom_stew",
    "amount": 125
  },
  "item_output": {
    "item": "minecraft:nether_wart"
  },
  "pressure": 2.5,
  "time": 100
});

<recipetype:pneumaticcraft:heat_properties>.addJsonRecipe("bloodauto",{
  "type": "pneumaticcraft:heat_properties",
  "block": "tconstruct:blood_fluid",
  "temperature": 336,
  "thermalResistance": 100,
  "heatCapacity": 10000,
  "transformCold": {
    "block": "tconstruct:blood_slime"
  },
  "transformHot": {
    "block": "minecraft:air"
  },
  "transformColdFlowing": {
    "block": "tconstruct:blood_congealed_slime"
  },
});

