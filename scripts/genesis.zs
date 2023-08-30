import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.events.CTEventManager;
<tag:items:crafttweaker:hammers>.add(<item:tconstruct:sledge_hammer>);
<tag:items:crafttweaker:hammerandexca>.add([<item:tconstruct:sledge_hammer>,<item:tconstruct:excavator>]);
<tag:items:forge:chests/wooden>.add(<item:stonechest:chest_cobblestone>);
<tag:items:crafttweaker:stone>.add(<tag:items:forge:stone>);
<tag:items:crafttweaker:stone>.remove(<item:minecraft:polished_andesite>);

recipes.remove(<item:minecraft:dispenser>);
recipes.remove(<item:crafting_on_a_stick:crafting_table>);
recipes.remove(<item:stonechest:chest_cobblestone>);
recipes.remove(<item:minecraft:blast_furnace>);
recipes.remove(<item:minecraft:anvil>);
recipes.remove(<item:minecraft:flint_and_steel>);
recipes.remove(<item:angelblockrenewed:angel_block>);

craftingTable.addShapeless("cobble",<item:minecraft:cobblestone>*4, [<item:minecraft:cobblestone>]);
craftingTable.addShapeless("ange",<item:angelblockrenewed:angel_block>, [<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(1),<item:stonechest:part_cobblestone>,<item:minecraft:cobblestone>,<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string})]);
craftingTable.addShapeless("dior",<item:minecraft:diorite>*2, [<item:minecraft:sandstone>,<item:minecraft:gravel>]);
craftingTable.addShapeless("coarse",<item:minecraft:coarse_dirt>, [<item:minecraft:flint>,<item:minecraft:gravel>,<item:minecraft:sand>]);
craftingTable.addShapeless("gravfast",<item:minecraft:gravel>*8, [<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(8)]);
craftingTable.addShapeless("sandfast",<item:minecraft:sand>*8, [<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(8)]);
craftingTable.addShapeless("drip",<item:minecraft:dripstone_block>, [<item:minecraft:red_sand>,<item:minecraft:clay>]);
craftingTable.addShapeless("disp",<item:minecraft:dispenser>, [<item:minecraft:dropper>,<item:minecraft:hopper>]);


craftingTable.addShaped("hamhead",<item:tconstruct:hammer_head>.withTag({Material: "tconstruct:rock" as string}),[[<item:stonechest:part_cobblestone>,<item:stonechest:part_cobblestone>],[<item:stonechest:part_cobblestone>,<item:stonechest:part_cobblestone>]]);
craftingTable.addShaped("hamhand",<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string}),[[<item:stonechest:part_cobblestone>],[<item:minecraft:cobblestone>]]);
craftingTable.addShaped("hamplate",<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string}),[[<item:minecraft:cobblestone>,<item:minecraft:cobblestone>],[<item:minecraft:cobblestone>,<item:minecraft:cobblestone>]]);
craftingTable.addShaped("hammer",<item:tconstruct:sledge_hammer>.withTag({tic_multipliers: {"tconstruct:mining_speed": 0.4 as float, "tconstruct:attack_damage": 1.35 as float, "tconstruct:durability": 4.0 as float}, tic_stats: {"tconstruct:attack_speed": 0.75 as float, "tconstruct:mining_speed": 1.68 as float, "tconstruct:attack_damage": 5.4 as float, "tconstruct:harvest_tier": "minecraft:stone" as string, "tconstruct:durability": 464.0 as float}, tic_broken: 0 as byte, tic_modifiers: [{name: "tconstruct:smite" as string, level: 2 as short}, {name: "tconstruct:stonebound" as string, level: 4 as short}], tic_materials: ["tconstruct:rock" as string, "tconstruct:rock" as string, "tconstruct:rock" as string, "tconstruct:rock" as string], tic_persistent_data: {abilities: 1 as int, upgrades: 2 as int}}),
[[<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string}),<item:tconstruct:hammer_head>.withTag({Material: "tconstruct:rock" as string})],[<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string}),<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string})]]);
craftingTable.addShaped("cheest",<item:stonechest:chest_cobblestone>,[[<item:stonechest:part_cobblestone>,<item:stonechest:part_cobblestone>],[<item:stonechest:part_cobblestone>,<item:angelblockrenewed:angel_block>]]);
craftingTable.addShaped("craft",<item:crafting_on_a_stick:crafting_table>,[[<item:stonechest:part_diorite>,<item:stonechest:part_andesite>],[<item:stonechest:part_cobblestone>,<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string})]]);
craftingTable.addShaped("blast_furnace",<item:minecraft:blast_furnace>,[[<item:minecraft:iron_ingot>,<item:create:iron_sheet>,<item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>,<item:minecraft:furnace>,<item:minecraft:iron_ingot>],[<item:minecraft:smooth_stone>,<item:minecraft:smooth_stone>,<item:minecraft:smooth_stone>]]);
craftingTable.addShaped("anvil",<item:minecraft:anvil>,[[<item:create:andesite_alloy>,<item:create:andesite_alloy>,<item:create:andesite_alloy>],[<item:minecraft:air>,<item:pneumaticcraft:ingot_iron_compressed>,<item:minecraft:air>],[<item:pneumaticcraft:ingot_iron_compressed>,<item:pneumaticcraft:ingot_iron_compressed>,<item:pneumaticcraft:ingot_iron_compressed>]]);
craftingTable.addShaped("exca", <item:tconstruct:excavator>.withTag({tic_multipliers: {"tconstruct:mining_speed": 0.3 as float, "tconstruct:attack_damage": 1.2 as float, "tconstruct:durability": 3.75 as float}, tic_stats: {"tconstruct:attack_speed": 1.0 as float, "tconstruct:mining_speed": 1.26 as float, "tconstruct:attack_damage": 3.0 as float, "tconstruct:harvest_tier": "minecraft:stone" as string, "tconstruct:durability": 435.0 as float}, tic_broken: 0 as byte, tic_modifiers: [{name: "tconstruct:knockback" as string, level: 2 as short}, {name: "tconstruct:stonebound" as string, level: 4 as short}, {name: "tconstruct:pathing" as string, level: 1 as short}], tic_materials: ["tconstruct:rock" as string, "tconstruct:rock" as string, "tconstruct:rock" as string, "tconstruct:rock" as string], tic_persistent_data: {abilities: 1 as int, upgrades: 2 as int}}),
[[<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string}),<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string})],[<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string}),<item:tconstruct:tough_handle>.withTag({Material: "tconstruct:rock" as string})]]);


furnace.removeByRegex("create:.*from_crushed");
furnace.addRecipe("crushiron", <item:minecraft:iron_nugget>*6, <item:create:crushed_raw_iron>, 0.1, 220);
furnace.addRecipe("crushgold", <item:minecraft:gold_nugget>*6, <item:create:crushed_raw_gold>, 0.1, 220);
furnace.addRecipe("crushcopp", <item:create:copper_nugget>*6, <item:create:crushed_raw_copper>, 0.1, 220);
furnace.addRecipe("crushzinc", <item:create:zinc_nugget>*6, <item:create:crushed_raw_zinc>, 0.1, 220);
furnace.addRecipe("crushnick", <item:modularmaterials:nugget.nickel>*6, <item:create:crushed_raw_nickel>, 0.1, 220);


LycheeRecipeManager.addRecipe("crushgrav", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:gravel>)
    .post([LycheePosts.placeBlock(<block:minecraft:sand>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:flint>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:sand>).withWeight(18)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushcob", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:cobblestone>)
    .post([LycheePosts.placeBlock(<block:minecraft:gravel>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:coal>),LycheePosts.placeBlock(<block:minecraft:gravel>).withWeight(13)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushsand", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:sand>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:gunpowder>).withWeight(2),LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(9),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(21)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushredsand", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:red_sand>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:gunpowder>).withWeight(2),LycheePosts.dropItem(<item:create:crushed_raw_gold>),LycheePosts.dropItem(<item:minecraft:dead_bush>).withWeight(7),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(33)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushdior", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:diorite>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:quartz>).withWeight(3),LycheePosts.dropItem(<item:create:crushed_raw_zinc>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(11)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushandes", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:andesite>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:create:crushed_raw_iron>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushgran", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:granite>)
    .post([LycheePosts.placeBlock(<block:minecraft:red_sand>),LycheePosts.random([LycheePosts.dropItem(<item:create:crushed_raw_copper>),LycheePosts.placeBlock(<block:minecraft:red_sand>).withWeight(4)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushcoarsedirt", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:coarse_dirt>)
    .post([LycheePosts.placeBlock(<block:minecraft:dirt>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:dead_bush>).withWeight(1),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:dirt>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushdirt", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:dirt>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:wheat_seeds>).withWeight(4),LycheePosts.dropItem(<item:tconstruct:earth_slime_leaves>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(7)], 1, 2),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushclay", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:clay>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:kelp>).withWeight(4),LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(7),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(3)], 3, 6),LycheePosts.damageItem(1)]));


LycheeRecipeManager.addRecipe("slime", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:clay_ball>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .crushingLandingBlock(<block:tconstruct:earth_slime_leaves>)
    .post([LycheePosts.anvilDamageChance(0.1),LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.dropItem(<item:minecraft:slime_ball>)]));
LycheeRecipeManager.addRecipe("earlyironplate", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:iron_ingot>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .post([LycheePosts.anvilDamageChance(0.3),LycheePosts.dropItem(<item:create:iron_sheet>).condition([LycheeConditions.chance(0.75)])]));
LycheeRecipeManager.addRecipe("earlycopperplate", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:copper_ingot>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .post([LycheePosts.anvilDamageChance(0.3),LycheePosts.dropItem(<item:create:copper_sheet>).condition([LycheeConditions.chance(0.75)])]));
LycheeRecipeManager.addRecipe("earlygoldplate", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:gold_ingot>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .post([LycheePosts.anvilDamageChance(0.3),LycheePosts.dropItem(<item:create:golden_sheet>).condition([LycheeConditions.chance(0.75)])]));

LycheeRecipeManager.addRecipe("coal", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:flint>)
    .post(LycheePosts.dropItem(<item:minecraft:coal>))
);



<recipetype:integrateddynamics:squeezer>.addJsonRecipe("claywater", {
  "type": "integrateddynamics:squeezer",
  "item": "minecraft:clay",
  "result": {
    "fluid": {
      "fluid": "minecraft:water","amount": 125}},});
<recipetype:integrateddynamics:squeezer>.addJsonRecipe("gran", {
  "type": "integrateddynamics:squeezer",
  "item": "minecraft:granite",
  "result": {"items": [{"item":  
        {"item": "create:copper_nugget","count": 4}},
        { "item": "create:copper_nugget","chance": 0.75}]},});


<recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("claywater2", {
  "type": "integrateddynamics:mechanical_squeezer",
  "item": "minecraft:clay",
  "result": {
    "fluid": {
      "fluid": "minecraft:water","amount": 250},
    "items": [
      {"item": {"item": "minecraft:clay_ball","chance": 0.5}}]}, "duration": 30});
<recipetype:integrateddynamics:squeezer>.addJsonRecipe("gran2", {
  "type": "integrateddynamics:squeezer",
  "item": "minecraft:granite",
  "result": {"items": [{"item":  
        {"item": "create:copper_nugget","count": 6}},
        { "item": "create:copper_nugget","chance": 0.9}]},});

