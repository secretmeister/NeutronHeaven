<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_slimesteel");
<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_brass");
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:smeltery/casting/slime/earth/dirt");


<recipetype:tconstruct:molding_table>.addJsonRecipe("roundplatesand",{
  "type": "tconstruct:molding_table",
  "material": {
    "item": "tconstruct:blank_sand_cast"
  },
  "pattern": {
    "item": "minecraft:clay_ball",
  },
  "result": "tconstruct:round_plate_sand_cast"
});
<recipetype:tconstruct:molding_table>.addJsonRecipe("roundplateredsand",{
  "type": "tconstruct:molding_table",
  "material": {
    "item": "tconstruct:blank_red_sand_cast"
  },
  "pattern": {
    "item": "minecraft:clay_ball",
  },
  "result": "tconstruct:round_plate_red_sand_cast"
});

<recipetype:tconstruct:casting_table>.remove(<item:tconstruct:copper_nugget>);

<recipetype:tconstruct:casting_table>.addJsonRecipe("nugget", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:nugget_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_copper",
    "amount": 10
  },
  "result": "tconstruct:copper_nugget",
  "cooling_time": 20
});

<recipetype:tconstruct:alloying>.addJsonRecipe("slimesteel2",{
  "type": "tconstruct:alloy",
  "inputs": [
    {
      "tag": "forge:molten_iron",
      "amount": 90
    },
    {
      "tag": "tconstruct:sky_slime",
      "amount": 250
    },
    {
      "tag": "tconstruct:seared_stone",
      "amount": 250
    }
  ],
  "result": {
    "fluid": "tconstruct:molten_slimesteel",
    "amount": 180
  },
  "temperature": 800
});
<recipetype:tconstruct:alloying>.addJsonRecipe("earlbrass",{
  "type": "tconstruct:alloy",
  "inputs": [
    {
      "tag": "forge:molten_zinc",
      "amount": 90
    },
    {
      "tag": "forge:molten_copper",
      "amount": 90
    }
  ],
  "result": {
    "fluid": "tconstruct:molten_brass",
    "amount": 90
  },
  "temperature": 850
});

<recipetype:tconstruct:melting>.addJsonRecipe("bettiron",{
  "type": "tconstruct:melting",
  "ingredient": {
    "item": "minecraft:andesite"
  },
  "result": {
    "fluid": "tconstruct:molten_iron",
    "amount": 60
  },
  "temperature": 500,
  "time": 200
});
<recipetype:tconstruct:melting>.addJsonRecipe("crushediron",{
  "type": "tconstruct:melting",
  "ingredient": {
    "item": "create:crushed_raw_iron"
  },
  "result": {
    "fluid": "tconstruct:molten_iron",
    "amount": 120
  },
  "temperature": 700,
  "time": 200
});
<recipetype:tconstruct:melting>.addJsonRecipe("crushedcopp",{
  "type": "tconstruct:melting",
  "ingredient": {
    "item": "create:crushed_raw_copper"
  },
  "result": {
    "fluid": "tconstruct:molten_copper",
    "amount": 120
  },
  "temperature": 500,
  "time": 200
});
<recipetype:tconstruct:melting>.addJsonRecipe("crushedzinc",{
  "type": "tconstruct:melting",
  "ingredient": {
    "item": "create:crushed_raw_zinc"
  },
  "result": {
    "fluid": "tconstruct:molten_zinc",
    "amount": 120
  },
  "temperature": 800,
  "time": 200
});
<recipetype:tconstruct:melting>.addJsonRecipe("crushedgold",{
  "type": "tconstruct:melting",
  "ingredient": {
    "item": "create:crushed_raw_gold"
  },
  "result": {
    "fluid": "tconstruct:molten_gold",
    "amount": 120
  },
  "temperature": 600,
  "time": 200
});

<recipetype:tconstruct:fuel>.addJsonRecipe("biofuel", {
  "type": "tconstruct:melting_fuel",
  "fluid": {
    "name": "pneumaticcraft:biodiesel",
    "amount": 25
  },
  "duration": 75,
  "temperature": 930
});

