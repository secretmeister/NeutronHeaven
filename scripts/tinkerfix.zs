<recipetype:tconstruct:casting_table>.removeByRegex("tconstruct:smeltery/casting/metal/.*/plate_.*_cast.*");

<recipetype:tconstruct:casting_table>.addJsonRecipe("platesandcopp", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_copper",
    "amount": 90
  },
  "result": "create:copper_sheet",
  "cooling_time": 100
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("plategoldcopp", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:plate_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_copper",
    "amount": 90
  },
  "result": "create:copper_sheet",
  "cooling_time": 100
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("platesandbrass", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_brass",
    "amount": 90
  },
  "result": "create:brass_sheet",
  "cooling_time": 140
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("plategoldbrass", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:plate_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_brass",
    "amount": 90
  },
  "result": "create:brass_sheet",
  "cooling_time": 140
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("platesandiron", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_iron",
    "amount": 90
  },
  "result": "create:iron_sheet",
  "cooling_time": 100
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("plategoldiron", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:plate_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_iron",
    "amount": 90
  },
  "result": "create:iron_sheet",
  "cooling_time": 100
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("platesandgold", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/plate"
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_gold",
    "amount": 90
  },
  "result": "create:golden_sheet",
  "cooling_time": 100
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("plategoldgold", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:plate_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_gold",
    "amount": 90
  },
  "result": "create:golden_sheet",
  "cooling_time": 100
});

function ingotandnugget(name as string, modid as string = "tconstruct:") as void {

var ingotornuggetstring ="ingot";
var fluidamount = 90;
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/"+name+"/"+ingotornuggetstring+"_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/"+name+"/"+ingotornuggetstring+"_gold_cast");
<recipetype:tconstruct:casting_table>.addJsonRecipe(ingotornuggetstring + name +"sand", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/"+ingotornuggetstring
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_" + name,
    "amount": fluidamount
  },
  "result": modid + name +"_"+ ingotornuggetstring,
  "cooling_time": 60
});
<recipetype:tconstruct:casting_table>.addJsonRecipe(ingotornuggetstring + name +"gold", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:"+ingotornuggetstring+"_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_" + name,
    "amount": fluidamount
  },
  "result": modid+name +"_"+ ingotornuggetstring,
  "cooling_time": 60
});
ingotornuggetstring ="nugget";
fluidamount = 10;
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/"+name+"/"+ingotornuggetstring+"_sand_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/"+name+"/"+ingotornuggetstring+"_gold_cast");
<recipetype:tconstruct:casting_table>.addJsonRecipe(ingotornuggetstring + name +"sand", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/"+ingotornuggetstring
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_" + name,
    "amount": fluidamount
  },
  "result": modid+name +"_"+ ingotornuggetstring,
  "cooling_time": 60
});
<recipetype:tconstruct:casting_table>.addJsonRecipe(ingotornuggetstring + name +"gold", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "tconstruct:"+ingotornuggetstring+"_cast"
  },
  "cast_consumed": false,
  "fluid": {
    "tag": "tconstruct:molten_" + name,
    "amount": fluidamount
  },
  "result": modid+name +"_"+ ingotornuggetstring,
  "cooling_time": 60
});
}
ingotandnugget("cobalt");
ingotandnugget("rose_gold");
ingotandnugget("hepatizon");
ingotandnugget("manyullyn");
ingotandnugget("amethyst_bronze");
ingotandnugget("zinc", "create:");
ingotandnugget("brass", "create:");