#noload

/*
    Valid recipetypes:
    <recipetype:lychee:lightning_channeling>
    <recipetype:lychee:item_inside>
    <recipetype:lychee:item_exploding>
    <recipetype:lychee:item_burning>
    <recipetype:lychee:anvil_crafting>
    <recipetype:lychee:block_exploding>
    <recipetype:lychee:block_crushing>
    <recipetype:lychee:block_interacting>
    <recipetype:lychee:block_clicking>

*/


//Toss brick into fire, get back nether brick
LycheeRecipeManager.addRecipe("example_item_burning", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:brick>)
    .post(LycheePosts.dropItem(<item:minecraft:nether_brick>))
);


//Gives all players in a 5 block radius Wither 3 for 10 seconds
LycheeRecipeManager.addRecipe("sand_crush_nether_star", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:nether_star>)
    .crushingFallingBlock(<block:minecraft:sand>)
    .post(LycheePosts.executeCommand("effect give @e[type=minecraft:player, distance=0..5] minecraft:wither 10 2"))
);

//Turn sand into glass, in the nether while sneaking
LycheeRecipeManager.addRecipe("smelt_sand", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:fire_charge>)
    .blockIn(<block:minecraft:sand>)
    .condition([LycheeConditions.dimension("minecraft:the_nether"), LycheeConditions.isSneaking()])
    .post([LycheePosts.placeBlock(<block:minecraft:glass>), LycheePosts.executeCommand("particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 4")])
);

