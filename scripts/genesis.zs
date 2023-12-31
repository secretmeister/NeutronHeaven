import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.events.CTEventManager;
<tag:items:crafttweaker:hammers>.add(<item:tconstruct:sledge_hammer>);
<tag:items:crafttweaker:hammerandexca>.add([<item:tconstruct:sledge_hammer>,<item:tconstruct:excavator>]);
<tag:items:forge:chests/wooden>.add(<item:stonechest:chest_cobblestone>, <item:stonechest:chest_andesite>, <item:stonechest:chest_calcite>, <item:stonechest:chest_cobbled_deepslate>, <item:stonechest:chest_deepslate>, <item:stonechest:chest_diorite>, <item:stonechest:chest_granite>, <item:stonechest:chest_prismarine>, <item:stonechest:chest_stone>, <item:stonechest:chest_tuff>);
<tag:items:crafttweaker:stone>.add(<tag:items:forge:stone>);
<tag:items:crafttweaker:stone>.remove(<item:minecraft:polished_andesite>);
<tag:items:lychee:item_exploding_catalysts>.add(<item:tconstruct:efln_ball>);
<tag:items:lychee:block_exploding_catalysts>.add(<item:tconstruct:efln_ball>);
<tag:items:botania:loonium_blacklist>.remove(<item:botania:overgrowth_seed>);

recipes.remove(<item:minecraft:dispenser>);
recipes.remove(<item:crafting_on_a_stick:crafting_table>);
recipes.remove(<item:stonechest:chest_cobblestone>);
recipes.remove(<item:minecraft:blast_furnace>);
recipes.remove(<item:minecraft:anvil>);
recipes.remove(<item:minecraft:flint_and_steel>);
recipes.remove(<item:angelblockrenewed:angel_block>);
recipes.remove(<item:tconstruct:nether_grout>);
recipes.remove(<item:structuredcrafting:structured_crafter>);
recipes.removeByRegex("pipez:.*_pipe.*");

craftingTable.addShapeless("cobble",<item:minecraft:cobblestone>*4, [<item:minecraft:cobblestone>]);
craftingTable.addShapeless("ange",<item:angelblockrenewed:angel_block>, [<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(1),<item:stonechest:part_cobblestone>,<item:minecraft:cobblestone>,<item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string})]);
craftingTable.addShapeless("dior",<item:minecraft:diorite>*2, [<item:minecraft:sandstone>,<item:minecraft:gravel>]);
craftingTable.addShapeless("coarse",<item:minecraft:coarse_dirt>, [<item:minecraft:flint>,<item:minecraft:gravel>,<item:minecraft:sand>]);
craftingTable.addShapeless("gravfast",<item:minecraft:gravel>*8, [<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:minecraft:cobblestone>,<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(4)]);
craftingTable.addShapeless("sandfast",<item:minecraft:sand>*8, [<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:minecraft:gravel>,<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(4)]);
craftingTable.addShapeless("drip",<item:minecraft:dripstone_block>, [<item:minecraft:red_sand>,<item:minecraft:clay>]);
craftingTable.addShapeless("disp",<item:minecraft:dispenser>, [<item:minecraft:dropper>,<item:minecraft:hopper>]);
craftingTable.addShapeless("repkit",<item:tconstruct:repair_kit>.withTag({Material: "tconstruct:rock" as string})*2, [<item:tconstruct:sledge_hammer>.anyDamage().transformDamage(5), <item:tconstruct:large_plate>.withTag({Material: "tconstruct:rock" as string})]);


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
craftingTable.addShaped("piston2",<item:minecraft:piston>,[[<item:botania:livingwood_planks>,<item:botania:livingwood_planks>,<item:botania:livingwood_planks>],[<item:minecraft:cobblestone>,<item:minecraft:iron_ingot>,<item:minecraft:cobblestone>],[<item:minecraft:cobblestone>,<item:minecraft:redstone>,<item:minecraft:cobblestone>]]);
craftingTable.addShaped("crafterr",<item:structuredcrafting:structured_crafter>,[[<item:minecraft:stone>,<item:minecraft:dropper>,<item:minecraft:stone>],[<item:minecraft:iron_ingot>,<item:crafting_on_a_stick:crafting_table>,<item:minecraft:iron_ingot>],[<item:minecraft:stone>,<item:minecraft:redstone>,<item:minecraft:stone>]]);


furnace.removeByRegex("create:.*from_crushed");
furnace.addRecipe("crushiron", <item:minecraft:iron_nugget>*6, <item:create:crushed_raw_iron>, 0.1, 200);
furnace.addRecipe("crushgold", <item:minecraft:gold_nugget>*6, <item:create:crushed_raw_gold>, 0.1, 200);
furnace.addRecipe("crushcopp", <item:create:copper_nugget>*6, <item:create:crushed_raw_copper>, 0.1, 200);
furnace.addRecipe("crushzinc", <item:create:zinc_nugget>*6, <item:create:crushed_raw_zinc>, 0.1, 200);
furnace.addRecipe("coall", <item:minecraft:coal>*6, <item:minecraft:dried_kelp_block>, 0.1, 200);


LycheeRecipeManager.addRecipe("crushgrav", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:gravel>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:minecraft:sand>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:flint>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:sand>).withWeight(12)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushcob", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .setHideInJEI(true)
    .blockIn(<block:minecraft:cobblestone>)
    .post([LycheePosts.placeBlock(<block:minecraft:gravel>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:coal>),LycheePosts.placeBlock(<block:minecraft:gravel>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushsand", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:sand>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:gunpowder>).withWeight(3),LycheePosts.dropItem(<item:minecraft:gold_nugget>).withWeight(2),LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(6),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(13)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushredsand", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:red_sand>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:gunpowder>).withWeight(1),LycheePosts.dropItem(<item:create:crushed_raw_gold>).withWeight(4),LycheePosts.dropItem(<item:minecraft:dead_bush>).withWeight(5),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(7)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushdior", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:diorite>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:quartz>).withWeight(2),LycheePosts.dropItem(<item:create:crushed_raw_zinc>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushandes", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:andesite>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:create:crushed_raw_iron>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushgran", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:granite>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:minecraft:red_sand>),LycheePosts.random([LycheePosts.dropItem(<item:create:crushed_raw_copper>),LycheePosts.placeBlock(<block:minecraft:red_sand>).withWeight(3)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushcoarsedirt", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:coarse_dirt>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:minecraft:dirt>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:dead_bush>).withWeight(1),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:dirt>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushdirt", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:dirt>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:wheat_seeds>).withWeight(4),LycheePosts.dropItem(<item:tconstruct:earth_slime_leaves>),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(7)], 1, 2),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushclay", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:clay>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:kelp>).withWeight(5),LycheePosts.dropItem(<item:minecraft:clay_ball>).withWeight(7),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(2)], 5, 8),LycheePosts.damageItem(1)]));
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
LycheeRecipeManager.addRecipe("redsandystone", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:red_sand>)
    .crushingLandingBlock(<block:minecraft:red_sandstone>)
    .post([LycheePosts.dropItem(<item:create:crushed_raw_gold>).condition([LycheeConditions.chance(0.6),]),LycheePosts.preventDefault()]));
LycheeRecipeManager.addRecipe("redst", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:redstone_block>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .crushingLandingBlock(<block:minecraft:stone>)
    .setHideInJEI(true)
    .post([LycheePosts.anvilDamageChance(0.1),LycheePosts.placeBlock(<block:minecraft:redstone_ore>)]));
LycheeRecipeManager.addRecipe("redst3", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:redstone_block>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .crushingLandingBlock(<block:minecraft:deepslate>)
    .setHideInJEI(true)
    .post([LycheePosts.anvilDamageChance(0.9),LycheePosts.placeBlock(<block:minecraft:deepslate_redstone_ore>)]));
LycheeRecipeManager.addRecipe("redst2", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:sand>)
    .crushingLandingBlock(<block:minecraft:redstone_ore>)
    .post([LycheePosts.dropItem(<item:minecraft:redstone>).condition([LycheeConditions.chance(0.4)]),LycheePosts.placeBlock(<block:minecraft:stone>).condition([LycheeConditions.chance(0.01)]),LycheePosts.preventDefault()]));
LycheeRecipeManager.addRecipe("redst4", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:sand>)
    .crushingLandingBlock(<block:minecraft:deepslate_redstone_ore>)
    .post([LycheePosts.dropItem(<item:minecraft:redstone>).condition([LycheeConditions.chance(0.5)]),LycheePosts.preventDefault()]));



craftingTable.addShaped("pipei",<item:pipez:item_pipe>*16,[[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>],[<item:minecraft:dropper>,<item:minecraft:redstone>,<item:minecraft:dropper>],[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>]]);
craftingTable.addShaped("pipef",<item:pipez:fluid_pipe>*16,[[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>],[<item:minecraft:bucket>,<item:minecraft:redstone>,<item:minecraft:bucket>],[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>]]);
craftingTable.addShaped("pipee",<item:pipez:energy_pipe>*16,[[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>],[<item:minecraft:redstone_block>,<item:minecraft:redstone>,<item:minecraft:redstone_block>],[<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>,<item:tconstruct:amethyst_bronze_ingot>]]);
craftingTable.addShaped("pipeu",<item:pipez:universal_pipe>*4,[[<item:pipez:item_pipe>,<item:pipez:fluid_pipe>,<item:pipez:energy_pipe>],[<item:tconstruct:amethyst_bronze_ingot>,<item:botania:terrasteel_nugget>,<item:tconstruct:amethyst_bronze_ingot>],[<item:pipez:item_pipe>,<item:pipez:fluid_pipe>,<item:pipez:energy_pipe>]]);

LycheeRecipeManager.addRecipe("nethergrout", <recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
  .itemIn([<item:minecraft:red_sand>, <item:minecraft:gravel>])
  .blockIn(<block:tconstruct:liquid_soul_fluid>)
  .setHideInJEI(true)
  .post([LycheePosts.placeBlock(<block:tconstruct:nether_grout>)]));
LycheeRecipeManager.addRecipe("claybet", <recipetype:lychee:item_inside>, new LycheeRecipeBuilder()
    .itemIn([<item:minecraft:sand>])
    .blockIn(<block:minecraft:water>)
    .setHideInJEI(true)
    .post([LycheePosts.placeBlock(<block:minecraft:clay>).condition(LycheeConditions.chance(0.8))])
);
LycheeRecipeManager.addRecipe("polishedrosequartz", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn([<item:create:rose_quartz>])
    .blockIn(<block:minecraft:gravel>)
    .post([LycheePosts.random([LycheePosts.dropItem(<item:create:polished_rose_quartz>).withWeight(5), LycheePosts.dropItem(<item:minecraft:redstone>*4).withWeight(8), LycheePosts.dropItem(<item:minecraft:redstone>*5).withWeight(6),LycheePosts.dropItem(<item:minecraft:redstone>*6).withWeight(4)])])
);