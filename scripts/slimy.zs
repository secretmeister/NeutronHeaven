import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.loot.modifier.CommonLootModifiers;


recipes.remove(<item:tconstruct:earth_slime_dirt>);

<tag:items:crafttweaker:pickadze>.add(<item:tconstruct:pickadze>);

<recipetype:create:filling>.addRecipe("slimedirt",<item:tconstruct:earth_slime_dirt>, <item:minecraft:dirt>, <fluid:tconstruct:earth_slime>*1000);

<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("skyslime",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
    {"type": "pneumaticcraft:stacked_item",
      "item": "minecraft:prismarine_shard",
      "count": 2},
      {"item": "minecraft:prismarine_crystals"},      
      {"item": "tconstruct:earth_slime_crystal"}],
  "pressure": 2.5,
  "results": [
    {"item": "tconstruct:sky_slime_ball", "count": 2}]});

LycheeRecipeManager.addRecipe("soulsand", <recipetype:lychee:lightning_channeling>, new LycheeRecipeBuilder()
    .post([LycheePosts.placeBlock(<block:tconstruct:soul_glass>, new BlockPos(0, -2, 0)).condition([LycheeConditions.block(<block:minecraft:glass>, new BlockPos(0, -2, 0))]),LycheePosts.executeCommand("weather thunder 150", true).condition([LycheeConditions.chance(0.3)])])
    .comment("Scares the glass below into soul glass")
);

LycheeRecipeManager.addRecipe("lapisbad", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:gravel>)
    .crushingLandingBlock(<block:minecraft:diorite>)
    .post([LycheePosts.preventDefault(),LycheePosts.dropItem(<item:minecraft:lapis_lazuli>).condition([LycheeConditions.chance(0.05)]),LycheePosts.dropItem(<item:minecraft:quartz>).condition([LycheeConditions.chance(0.075)])]));
LycheeRecipeManager.addRecipe("lapisgood", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .crushingLandingBlock(<block:minecraft:diorite>)
    .post([LycheePosts.anvilDamageChance(0.6),LycheePosts.dropItem(<item:minecraft:lapis_lazuli>).condition([LycheeConditions.chance(0.75)]),LycheePosts.dropItem(<item:minecraft:quartz>).condition([LycheeConditions.chance(0.9)])]));
LycheeRecipeManager.addRecipe("handle", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .itemIn(<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string}))
    .post([LycheePosts.anvilDamageChance(0.1),LycheePosts.dropItem(<item:tconstruct:tool_handle>.withTag({Material: "tconstruct:rock" as string}))]));

LycheeRecipeManager.addRecipe("siftmyc", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:pickadze>)
    .blockIn(<block:minecraft:mycelium>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:red_mushroom>).withWeight(2),LycheePosts.dropItem(<item:minecraft:brown_mushroom>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(5)], 2, 4),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("siftdirt", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:pickadze>)
    .blockIn(<block:minecraft:dirt_path>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:beetroot_seeds>).withWeight(3),LycheePosts.dropItem(<item:minecraft:wheat_seeds>).withWeight(4),LycheePosts.dropItem(<item:minecraft:cocoa_beans>).withWeight(1),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(2)], 2, 3),LycheePosts.damageItem(1)]));

craftingTable.addShapeless("pickhead", <item:tconstruct:pick_head>.withTag({Material: "tconstruct:slimesteel" as string}),[<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(5),<item:tconstruct:slimesteel_ingot>,<item:tconstruct:slimesteel_ingot>]);
craftingTable.addShapeless("axehead", <item:tconstruct:small_axe_head>.withTag({Material: "tconstruct:slimesteel" as string}),[<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(1),<item:tconstruct:pick_head>.withTag({Material: "tconstruct:slimesteel" as string})]);

LycheeRecipeManager.addRecipe("thunder", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
  .itemIn(<item:minecraft:blue_stained_glass>)
  .condition(LycheeConditions.weather("clear"))
  .post([LycheePosts.executeCommand("weather thunder 600", true),LycheePosts.executeCommand("summon minecraft:lightning_bolt", true)])
  .comment("Summons the Rain"));

LycheeRecipeManager.addRecipe("clear", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
  .itemIn(<item:minecraft:blue_stained_glass>)
  .condition(LycheeConditions.weather("thunder"))
  .post([LycheePosts.executeCommand("weather clear", true),LycheePosts.executeCommand("summon minecraft:lightning_bolt", true)])
  .comment("Stops the Rain"));


LycheeRecipeManager.addRecipe("earthslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:wheat_seeds>)
    .blockIn(<block:tconstruct:earth_slime_crystal_block>)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_earth_slime_crystal>)]));
LycheeRecipeManager.addRecipe("skyslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:botania:infused_seeds>)
    .blockIn(<block:tconstruct:sky_slime_crystal_block>)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_sky_slime_crystal>)]));
LycheeRecipeManager.addRecipe("endslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:tconstruct:ender_slime_grass_seeds>)
    .blockIn(<block:tconstruct:ender_slime_crystal_block>)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_ender_slime_crystal>)]));


<block:tconstruct:greenheart_log>.addLootModifier(
    "greenheartnt",
    CommonLootModifiers.replaceWith(<item:tconstruct:greenheart_log>, <item:tconstruct:earth_congealed_slime>)
);
<block:tconstruct:stripped_greenheart_log>.addLootModifier(
    "strgreenheartnt",
    CommonLootModifiers.replaceWith(<item:tconstruct:stripped_greenheart_log>, <item:tconstruct:earth_congealed_slime>)
);
<block:tconstruct:greenheart_wood>.addLootModifier(
    "greenheartntw",
    CommonLootModifiers.replaceWith(<item:tconstruct:greenheart_wood>, <item:tconstruct:earth_congealed_slime>)
);
<block:tconstruct:stripped_greenheart_wood>.addLootModifier(
    "strgreenheartntw",
    CommonLootModifiers.replaceWith(<item:tconstruct:stripped_greenheart_wood>, <item:tconstruct:earth_congealed_slime>)
);
