recipes.remove(<item:create:copper_casing>);
recipes.remove(<item:create:spout>);
recipes.remove(<item:create:andesite_alloy>);
recipes.remove(<item:create:fluid_tank>);
recipes.remove(<item:create:brass_casing>);
recipes.remove(<item:create:blaze_cake_base>);
recipes.remove(<item:create:belt_connector>);
recipes.remove(<item:create:blaze_cake>);
recipes.remove(<item:create:encased_chain_drive>);
<recipetype:create:filling>.remove(<item:minecraft:grass_block>);
<recipetype:create:crushing>.removeByInput(<item:minecraft:diorite>);
<recipetype:create:milling>.removeByInput(<item:minecraft:calcite>);


<recipetype:create:item_application>.addRecipe("copcas", [<item:create:copper_casing>], <item:minecraft:polished_andesite>, <item:create:copper_sheet>, false);

craftingTable.addShaped("encasedchaindrive", <item:create:encased_chain_drive>*16, [[<item:create:andesite_casing>,<item:minecraft:iron_ingot>],[<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>]]);
craftingTable.addShaped("spout", <item:create:spout>, [[<item:minecraft:air>,<item:create:andesite_alloy>,<item:minecraft:air>],[<tag:items:forge:glass_panes>,<item:create:copper_casing>,<tag:items:forge:glass_panes>],[<item:minecraft:air>,<item:tconstruct:round_plate>.withTag({Material: "tconstruct:copper" as string}),<item:minecraft:air>]]);
craftingTable.addShaped("belt", <item:create:belt_connector>*8, [[<item:minecraft:dried_kelp>,<item:minecraft:dried_kelp>,<item:minecraft:dried_kelp>],[<item:minecraft:dried_kelp>,<item:minecraft:dried_kelp>,<item:minecraft:dried_kelp>]]);
craftingTable.addShaped("tank", <item:create:fluid_tank>, [[<item:create:copper_sheet>],[<item:tconstruct:seared_fuel_tank>],[<item:create:copper_sheet>]]);
craftingTable.addShapeless("alloy",<item:create:andesite_alloy>, [<item:minecraft:andesite>,<item:create:zinc_nugget>,<item:minecraft:iron_nugget>,<item:minecraft:andesite>]);

<recipetype:create:filling>.addRecipe("bettcopp",<item:create:crushed_raw_copper>, <item:minecraft:granite>, <fluid:tconstruct:seared_stone>*125);
<recipetype:create:filling>.addRecipe("bettslim",<item:tconstruct:earth_slime_leaves>, <item:minecraft:wheat_seeds>, <fluid:tconstruct:earth_slime>*125);
<recipetype:create:filling>.addRecipe("calc",<item:minecraft:calcite>, <item:minecraft:sand>, <fluid:tconstruct:molten_glass>*500);
<recipetype:create:filling>.addRecipe("blazcak",<item:create:blaze_cake>, <item:create:blaze_cake_base>, <fluid:tconstruct:blazing_blood>*150);
<recipetype:create:filling>.addRecipe("end",<item:tconstruct:ender_slime_grass_seeds>, <item:botania:mutated_seeds>, <fluid:tconstruct:ender_slime>*750);

<recipetype:create:milling>.addRecipe("calcite", [<item:minecraft:white_dye>%75], <item:minecraft:calcite>, 200);
<recipetype:create:milling>.addRecipe("snow", [<item:minecraft:snowball>*3%75,<item:minecraft:snowball>%50], <item:minecraft:packed_ice>, 100);
<recipetype:create:milling>.addRecipe("zinc", [<item:minecraft:quartz>%75,<item:create:crushed_raw_zinc>%20], <item:minecraft:diorite>, 200);
<recipetype:create:milling>.addRecipe("string", [<item:minecraft:string>*5%80,<item:minecraft:string>*2%65,<item:minecraft:string>%40], <item:minecraft:cobweb>, 20);

<recipetype:create:compacting>.addRecipe("amethy", <constant:create:heat_condition:none>, [<item:minecraft:amethyst_block>], [<item:botania:lavender_quartz>, <item:tconstruct:earth_slime_crystal_block>], []);
<recipetype:create:compacting>.addRecipe("feather", <constant:create:heat_condition:none>, [<item:minecraft:feather>*4], [<item:create:white_sail>], [<fluid:tconstruct:blood>*250]);
<recipetype:create:compacting>.addRecipe("blazcakbas", <constant:create:heat_condition:none>, [<item:create:blaze_cake_base>], [<item:create:cinder_flour>, <item:minecraft:sugar>], [<fluid:create:chocolate>*250]);
<recipetype:create:compacting>.addRecipe("eye", <constant:create:heat_condition:none>, [<item:minecraft:spider_eye>], [<item:minecraft:poisonous_potato>, <item:minecraft:red_dye>], [<fluid:tconstruct:blood>*25]);
<recipetype:create:compacting>.addRecipe("necrot", <constant:create:heat_condition:heated>, [<item:tconstruct:necrotic_bone>*2], [<item:minecraft:skeleton_skull>, <item:minecraft:bone>, <item:minecraft:charcoal>*5], [<fluid:tconstruct:liquid_soul>*100]);
<recipetype:create:compacting>.addRecipe("rottflesh", <constant:create:heat_condition:none>, [<item:minecraft:rotten_flesh>*3], [<item:minecraft:bone>], [<fluid:tconstruct:blood>*100], 100);

<recipetype:create:emptying>.addRecipe("bone", <item:minecraft:bone>, <fluid:tconstruct:blood>*30,<item:minecraft:rotten_flesh>,  10);

<recipetype:create:mixing>.addRecipe("blazeblood", <constant:create:heat_condition:superheated>, [<fluid:tconstruct:blazing_blood>*150], [<item:minecraft:blaze_powder>], [<fluid:minecraft:lava>*100], 50);
<recipetype:create:mixing>.addRecipe("brasscass", <constant:create:heat_condition:heated>, [<item:create:brass_casing>], [<item:create:andesite_casing>], [<fluid:tconstruct:molten_brass>*90]);
<recipetype:create:mixing>.addRecipe("laava", <constant:create:heat_condition:heated>, [<fluid:minecraft:lava>*500], [<item:create:powdered_obsidian>*3], [<fluid:minecraft:lava>*100], 100);


<recipetype:create:mechanical_crafting>.addRecipe("elytra", <item:minecraft:elytra>, [
    [<item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:botania:manaweave_cloth>, <item:botania:manaweave_cloth>, <item:botania:manaweave_cloth>,<item:minecraft:phantom_membrane>, <item:minecraft:air>], 
    [<item:minecraft:phantom_membrane>, <item:botania:rune_pride>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:botania:rune_greed>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:botania:manaweave_cloth>, <item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:botania:manaweave_cloth>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:botania:manaweave_cloth>, <item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:botania:manaweave_cloth>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:botania:rune_wrath>, <item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:botania:rune_envy>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:phantom_membrane>, <item:minecraft:air>]
    ]);
