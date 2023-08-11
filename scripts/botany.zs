<tag:items:minecraft:logs>.remove(<tag:items:botania:livingwood_logs>);
<tag:items:minecraft:planks>.remove(<item:botania:mossy_livingwood_planks>);
<tag:items:minecraft:planks>.remove(<item:botania:livingwood_planks>);
<tag:items:minecraft:planks>.remove(<item:botania:framed_livingwood>);
<tag:items:minecraft:planks>.remove(<item:botania:pattern_framed_livingwood>);
<tag:items:minecraft:wooden_slabs>.remove(<item:botania:livingwood_slab>);
<tag:items:minecraft:wooden_slabs>.remove(<item:botania:stripped_livingwood_slab>);
<tag:items:minecraft:wooden_slabs>.remove(<item:botania:livingwood_planks_slab>);
<tag:items:minecraft:logs_that_burn>.remove(<tag:items:botania:livingwood_logs>);
<tag:items:minecraft:logs_that_burn>.remove(<item:botania:stripped_livingwood_log>);

recipes.remove(<item:create:millstone>);

<recipetype:botania:pure_daisy>.addJsonRecipe("livingwood2",{
  "type": "botania:state_copying_pure_daisy",
  "input": 
      {"type": "block","block": "minecraft:polished_basalt"},
  "output": "botania:livingwood_log"
});

<recipetype:botania:pure_daisy>.addRecipe("pureclay", <blockstate:minecraft:clay>, <blockstate:minecraft:sand>,  100);
<recipetype:botania:pure_daisy>.addRecipe("purecoal", <blockstate:minecraft:coal_block>, <blockstate:minecraft:black_terracotta>, 200);

<recipetype:botania:mana_infusion>.remove(<item:minecraft:melon_seeds>);

<recipetype:botania:mana_infusion>.addRecipe("copprefining", <item:create:copper_nugget>*15, <item:create:crushed_raw_copper>, 100, <block:minecraft:polished_granite>);
<recipetype:botania:mana_infusion>.addRecipe("ironrefining", <item:minecraft:iron_nugget>*15, <item:create:crushed_raw_iron>, 100, <block:minecraft:polished_andesite>);
<recipetype:botania:mana_infusion>.addRecipe("zincrefining", <item:create:zinc_nugget>*15, <item:create:crushed_raw_zinc>, 100, <block:minecraft:polished_diorite>);
<recipetype:botania:mana_infusion>.addRecipe("goldrefining", <item:minecraft:gold_nugget>*15, <item:create:crushed_raw_gold>, 100, <block:minecraft:red_sandstone>);
<recipetype:botania:mana_infusion>.addRecipe("melonalch", <item:minecraft:melon_seeds>, <item:minecraft:beetroot_seeds>, 50, <block:botania:cell_block>);

<recipetype:botania:runic_altar>.remove(<item:botania:rune_earth>);

<recipetype:botania:runic_altar>.addRecipe("earth",<item:botania:rune_earth>, 5200, <tag:items:botania:mana_dusts>, <tag:items:botania:manasteel_ingots>, <item:minecraft:stone>, <item:minecraft:deepslate>, <item:minecraft:coal_block>);
<recipetype:botania:runic_altar>.addRecipe("cactus",<item:minecraft:cactus>, 1000, <item:tconstruct:earth_congealed_slime>, <item:minecraft:wheat_seeds>, <item:botania:mana_powder>);


<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("mycseed")
    .transitionTo(<item:minecraft:wheat_seeds>)
    .require(<item:minecraft:wheat_seeds>)
    .loops(1)
    .addOutput(<item:botania:mycelium_seeds>, 16)
    .addOutput(<item:minecraft:beetroot_seeds>, 2)
    .addOutput(<item:minecraft:wheat_seeds>, 1)
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:pneumaticcraft:vegetable_oil> * 100))
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:earth_slime> * 250))
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:molten_slimesteel> * 30)));

<recipetype:pneumaticcraft:thermo_plant>.addJsonRecipe("basalt",{
  "type": "pneumaticcraft:thermo_plant",
  "fluid_input": {
    "type": "pneumaticcraft:fluid",
    "fluid": "tconstruct:liquid_soul",
    "amount": 125
  },
  "item_input": {
    "item": "tconstruct:seared_paver"
  },
  "pressure": 2.0,
  "temperature": {
    "min_temp": 373
  },
  "item_output": {
    "item": "minecraft:basalt"
  }
});

<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("mill",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
      {"item": "tconstruct:gear_cast"},
      {"item": "create:shaft"},
      {"item": "minecraft:polished_andesite"}],
  "pressure": 3,
  "results": [
    {"item": "create:millstone"}]});

