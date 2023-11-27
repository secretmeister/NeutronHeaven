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
    .post([LycheePosts.placeBlock(<block:tconstruct:soul_glass>, new BlockPos(0, -2, 0)).condition([LycheeConditions.block(<block:minecraft:glass>, new BlockPos(0, -2, 0))])])
    .setHideInJEI(true)
    .comment("Scares the glass below into soul glass")
);

LycheeRecipeManager.addRecipe("quartzinter", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:gravel>)
    .crushingLandingBlock(<block:minecraft:diorite>)
    .post([LycheePosts.preventDefault(),LycheePosts.dropItem(<item:minecraft:quartz>).condition([LycheeConditions.chance(0.7)]),LycheePosts.dropItem(<item:create:crushed_raw_zinc>).condition([LycheeConditions.chance(0.1)])]));
LycheeRecipeManager.addRecipe("lapisinter", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:blue_concrete_powder>)
    .crushingLandingBlock(<block:minecraft:diorite>)
    .post([LycheePosts.preventDefault(),LycheePosts.dropItem(<item:minecraft:lapis_lazuli>).condition([LycheeConditions.chance(0.5)]),LycheePosts.dropItem(<item:minecraft:quartz>).condition([LycheeConditions.chance(0.1)])]));
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

LycheeRecipeManager.addRecipe("thegodsgrace", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
  .itemIn(<item:minecraft:diamond>)
  .condition(LycheeConditions.block(<block:minecraft:blue_terracotta>, new BlockPos(0, -1, 0)))
  .setHideInJEI(true)
  .post([LycheePosts.executeCommand("weather thunder", true),LycheePosts.executeCommand("summon minecraft:lightning_bolt"),LycheePosts.executeCommand("summon minecraft:trident ~ ~30 ~ {\"pickup\":1}")]));

LycheeRecipeManager.addRecipe("clear", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
  .itemIn(<item:minecraft:sponge>)
  .post([LycheePosts.executeCommand("execute as @a run weather clear", true).condition(LycheeConditions.chance(1).description("Absorbs the rain")),LycheePosts.dropItem(<item:minecraft:wet_sponge>)]));

<recipetype:tconstruct:casting_table>.addJsonRecipe("tridentchanneling", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:trident"
  },
  "cast_consumed": true,
  "fluid": {
    "tag": "tconstruct:molten_copper",
    "amount": 270
  },
  "result": {
  	"item":"minecraft:trident",
  	"nbt":"{\"Enchantments\":[{\"id\": \"minecraft:channeling\", \"lvl\": 1}] }"
    },
  "cooling_time": 100
});

LycheeRecipeManager.addRecipe("earthslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:wheat_seeds>)
    .blockIn(<block:tconstruct:earth_slime_crystal_block>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_earth_slime_crystal>)]));
LycheeRecipeManager.addRecipe("skyslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:botania:infused_seeds>)
    .blockIn(<block:tconstruct:sky_slime_crystal_block>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_sky_slime_crystal>)]));
LycheeRecipeManager.addRecipe("endslimecryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:tconstruct:ender_slime_grass_seeds>)
    .blockIn(<block:tconstruct:ender_slime_crystal_block>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:tconstruct:budding_ender_slime_crystal>)]));
LycheeRecipeManager.addRecipe("amethycryst", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:botania:purple_mushroom>)
    .blockIn(<block:minecraft:amethyst_block>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:minecraft:budding_amethyst>)]));


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
<block:tconstruct:skyroot_log>.addLootModifier(
    "skyheartnt",
    CommonLootModifiers.replaceWith(<item:tconstruct:skyroot_log>, <item:tconstruct:sky_congealed_slime>)
);
<block:tconstruct:stripped_skyroot_log>.addLootModifier(
    "strskyheartnt",
    CommonLootModifiers.replaceWith(<item:tconstruct:stripped_skyroot_log>, <item:tconstruct:sky_congealed_slime>)
);
<block:tconstruct:skyroot_wood>.addLootModifier(
    "skyheartntw",
    CommonLootModifiers.replaceWith(<item:tconstruct:skyroot_wood>, <item:tconstruct:sky_congealed_slime>)
);
<block:tconstruct:stripped_skyroot_wood>.addLootModifier(
    "strskyheartntw",
    CommonLootModifiers.replaceWith(<item:tconstruct:stripped_skyroot_wood>, <item:tconstruct:sky_congealed_slime>)
);



