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
recipes.remove(<item:minecraft:brewing_stand>);
recipes.remove(<item:botania:glimmering_livingwood_log>);
recipes.remove(<item:botania:quartz_lavender>);

//<recipetype:botania:orechid_ignem>.remove();

<recipetype:botania:pure_daisy>.addJsonRecipe("livingwood2",{
  "type": "botania:state_copying_pure_daisy",
  "input": 
      {"type": "block","block": "minecraft:polished_basalt"},
  "output": "botania:livingwood_log"
});

craftingTable.addShaped("brew",<item:minecraft:brewing_stand>,[[<item:minecraft:air>,<item:minecraft:golden_carrot>,<item:minecraft:air>],[<tag:items:forge:stone>,<tag:items:forge:stone>,<tag:items:forge:stone>]]);
craftingTable.addShapeless("tree_fertilizer",<item:create:tree_fertilizer>,[<tag:items:minecraft:small_flowers>,<tag:items:minecraft:small_flowers>,<tag:items:forge:mushrooms>,<item:minecraft:bone_meal>]);

<recipetype:botania:pure_daisy>.addRecipe("pureclay", <blockstate:minecraft:clay>, <blockstate:minecraft:sand>,  100);
<recipetype:botania:pure_daisy>.addRecipe("purecoal", <blockstate:minecraft:coal_block>, <blockstate:minecraft:black_terracotta>, 200);
<recipetype:botania:pure_daisy>.addRecipe("sponge", <blockstate:minecraft:sponge>, <blockstate:minecraft:gold_block>, 400);

<recipetype:botania:mana_infusion>.remove(<item:minecraft:melon_seeds>);
<recipetype:botania:mana_infusion>.remove(<item:minecraft:beetroot_seeds>);
<recipetype:botania:mana_infusion>.remove(<item:minecraft:wheat_seeds>);
<recipetype:botania:mana_infusion>.remove(<item:minecraft:pumpkin_seeds>);
<recipetype:botania:mana_infusion>.remove(<item:minecraft:potato>);
<recipetype:botania:mana_infusion>.remove(<item:minecraft:carrot>);

<recipetype:botania:mana_infusion>.addRecipe("copprefining", <item:create:copper_nugget>*15, <item:create:crushed_raw_copper>, 300, <block:minecraft:polished_granite>);
<recipetype:botania:mana_infusion>.addRecipe("ironrefining", <item:minecraft:iron_nugget>*15, <item:create:crushed_raw_iron>, 300, <block:minecraft:polished_andesite>);
<recipetype:botania:mana_infusion>.addRecipe("zincrefining", <item:create:zinc_nugget>*15, <item:create:crushed_raw_zinc>, 300, <block:minecraft:polished_diorite>);
<recipetype:botania:mana_infusion>.addRecipe("goldrefining", <item:minecraft:gold_nugget>*15, <item:create:crushed_raw_gold>, 300, <block:minecraft:red_sandstone>);
<recipetype:botania:mana_infusion>.addRecipe("melonalch", <item:minecraft:melon_seeds>, <item:minecraft:beetroot_seeds>, 500, <block:botania:cell_block>);
<recipetype:botania:mana_infusion>.addRecipe("pumpalch", <item:minecraft:pumpkin_seeds>, <item:minecraft:melon_seeds>, 500, <block:botania:cell_block>);
<recipetype:botania:mana_infusion>.addRecipe("beetalch", <item:minecraft:beetroot_seeds>, <item:minecraft:pumpkin_seeds>, 500, <block:botania:cell_block>);

<recipetype:botania:runic_altar>.remove(<item:botania:rune_earth>);

<recipetype:botania:runic_altar>.addRecipe("earth",<item:botania:rune_earth>*2, 5200, <tag:items:botania:mana_dusts>, <tag:items:botania:manasteel_ingots>, <item:minecraft:stone>, <item:minecraft:deepslate>, <item:minecraft:coal_block>);
<recipetype:botania:runic_altar>.addRecipe("cactus",<item:minecraft:cactus>, 2000, <item:tconstruct:earth_congealed_slime>, <item:minecraft:wheat_seeds>, <item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("carrot",<item:minecraft:carrot>, 1500, <item:minecraft:beetroot>, <item:create:copper_sheet>, <item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("potato",<item:minecraft:potato>, 1500, <item:minecraft:carrot>, <item:create:iron_sheet>, <item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("beet",<item:minecraft:beetroot>, 1500, <item:minecraft:potato>, <item:minecraft:redstone>, <item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("sugarcane",<item:minecraft:sugar_cane>, 1250, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:pneumaticcraft:glycerol>, <item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("enderpearl",<item:minecraft:ender_pearl>, 3000, <item:minecraft:dark_prismarine>,<item:tconstruct:blood_slime_ball>,<item:botania:mana_powder>);
<recipetype:botania:runic_altar>.addRecipe("egg",<item:minecraft:egg>, 6000, <item:minecraft:feather>,<item:tconstruct:blood_slime_ball>,<item:botania:mana_powder>);

<recipetype:botania:terra_plate>.addRecipe("tree", <item:minecraft:oak_sapling>, 10000, <item:minecraft:grass>, <item:minecraft:fern>, <item:minecraft:vine>, <item:create:tree_fertilizer>, <item:botania:terrasteel_nugget>);

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

LycheeRecipeManager.addRecipe("glimmer", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:glowstone>)
    .crushingLandingBlock(<tag:blocks:botania:livingwood_logs>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:botania:glimmering_livingwood_log>)]));
LycheeRecipeManager.addRecipe("chorus", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:end_stone>)
    .itemIn(<item:minecraft:apple>)
    .post([LycheePosts.dropItem(<item:minecraft:chorus_fruit>),LycheePosts.preventDefault()]));
LycheeRecipeManager.addRecipe("endsl", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:slime_block>)
    .crushingLandingBlock(<block:minecraft:chorus_flower>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:tconstruct:ender_congealed_slime>),LycheePosts.preventDefault()]));

<recipetype:botania:orechid>.registerOreWeight("sandstone",  <blockstate:minecraft:sand>,              <block:minecraft:sandstone>, 50);
<recipetype:botania:orechid>.registerOreWeight("endstone",   <blockstate:minecraft:end_stone>,         <block:minecraft:sandstone>, 1);

<recipetype:botania:orechid>.registerOreWeight("nethergold", <blockstate:minecraft:nether_gold_ore>,   <block:minecraft:netherrack>, 40);
<recipetype:botania:orechid>.registerOreWeight("quartz",     <blockstate:minecraft:nether_quartz_ore>, <block:minecraft:netherrack>, 30);
<recipetype:botania:orechid>.registerOreWeight("cobalt",     <blockstate:tconstruct:cobalt_ore>,       <block:minecraft:netherrack>, 20);
<recipetype:botania:orechid>.registerOreWeight("debris",     <blockstate:minecraft:ancient_debris>,    <block:minecraft:netherrack>, 1);
<recipetype:botania:orechid>.registerOreWeight("oresand",    <blockstate:minecraft:soul_sand>,         <block:minecraft:netherrack>, 70);
<recipetype:botania:orechid>.registerOreWeight("warpnyl",    <blockstate:minecraft:warped_nylium>,     <block:minecraft:netherrack>, 10);
<recipetype:botania:orechid>.registerOreWeight("crimnyl",    <blockstate:minecraft:crimson_nylium>,    <block:minecraft:netherrack>, 10);
<recipetype:botania:orechid>.registerOreWeight("orebasalt",  <blockstate:minecraft:basalt>,            <block:minecraft:netherrack>, 70);
<recipetype:botania:orechid>.registerOreWeight("magma",      <blockstate:minecraft:magma_block>,       <block:minecraft:netherrack>, 60);
<recipetype:botania:orechid>.registerOreWeight("blackstone", <blockstate:minecraft:blackstone>,        <block:minecraft:netherrack>, 70);
<recipetype:botania:orechid>.registerOreWeight("gilded",     <blockstate:minecraft:gilded_blackstone>, <block:minecraft:netherrack>, 1);

//<recipetype:botania:marimorphosis>.registerOreWeight("orechid_test", <blockstate:minecraft:dirt>, <block:minecraft:diamond_ore>, 50, 10, the biomes to apply the extra weight in);

