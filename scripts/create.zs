recipes.remove(<item:create:copper_casing>);
recipes.remove(<item:create:spout>);
recipes.remove(<item:create:andesite_alloy>);
<recipetype:create:filling>.remove(<item:minecraft:grass_block>);

<recipetype:create:item_application>.addRecipe("copcas", [<item:create:copper_casing>], <item:minecraft:polished_andesite>, <item:create:copper_sheet>, false);

craftingTable.addShaped("spout", <item:create:spout>, [[<item:minecraft:air>,<item:create:andesite_alloy>,<item:minecraft:air>],[<item:minecraft:glass_pane>,<item:create:copper_casing>,<item:minecraft:glass_pane>],[<item:minecraft:air>,<item:tconstruct:round_plate>.withTag({Material: "tconstruct:copper" as string}),<item:minecraft:air>]]);
craftingTable.addShapeless("alloy",<item:create:andesite_alloy>, [<item:minecraft:andesite>,<item:create:zinc_nugget>,<item:minecraft:iron_nugget>,<item:minecraft:andesite>]);

<recipetype:create:filling>.addRecipe("bettcopp",<item:create:crushed_raw_copper>, <item:minecraft:granite>, <fluid:tconstruct:seared_stone>*125);
<recipetype:create:filling>.addRecipe("bettslim",<item:tconstruct:earth_slime_leaves>, <item:minecraft:wheat_seeds>, <fluid:tconstruct:earth_slime>*125);
<recipetype:create:filling>.addRecipe("calc",<item:minecraft:calcite>, <item:minecraft:sand>, <fluid:tconstruct:molten_glass>*500);

<recipetype:create:milling>.removeByInput(<item:minecraft:calcite>);

<recipetype:create:milling>.addRecipe("calcite", [<item:minecraft:white_dye>%75], <item:minecraft:calcite>, 200);