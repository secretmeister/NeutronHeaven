LycheeRecipeManager.addRecipe("weighttest", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:clay_ball>)
    .crushingFallingBlock(<block:minecraft:diorite>)
    .post([LycheePosts.placeBlock(<block:minecraft:air>),LycheePosts.dropItem(<item:minecraft:slime_ball>)]));
