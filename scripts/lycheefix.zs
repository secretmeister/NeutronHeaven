LycheeRecipeManager.addRecipe("crushgravf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:gravel>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:minecraft:sand>).condition([LycheeConditions.chance(0.5).description("Replaces with sand")]),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:flint>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:sand>).withWeight(18)]),LycheePosts.damageItem(1)]));
  LycheeRecipeManager.addRecipe("crushcobf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .setGhost(true)
    .blockIn(<block:minecraft:cobblestone>)
    .post([LycheePosts.dropItem(<item:minecraft:gravel>).condition([LycheeConditions.chance(0.5).description("Replaces with gravel")]),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:coal>),LycheePosts.placeBlock(<block:minecraft:gravel>).withWeight(13)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushgranf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammers>)
    .blockIn(<block:minecraft:granite>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:minecraft:red_sand>).condition([LycheeConditions.chance(0.5).description("Replaces with red sand")]),LycheePosts.random([LycheePosts.dropItem(<item:create:crushed_raw_copper>),LycheePosts.placeBlock(<block:minecraft:red_sand>).withWeight(4)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("crushcoarsedirtf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<tag:items:crafttweaker:hammerandexca>)
    .blockIn(<block:minecraft:coarse_dirt>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:minecraft:dirt>).condition([LycheeConditions.chance(0.5).description("Replaces with dirt")]),LycheePosts.random([LycheePosts.dropItem(<item:minecraft:dead_bush>).withWeight(1),LycheePosts.placeBlock(<block:minecraft:air>).withWeight(2),LycheePosts.placeBlock(<block:minecraft:dirt>).withWeight(5)]),LycheePosts.damageItem(1)]));
LycheeRecipeManager.addRecipe("redstf", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:redstone_block>)
    .crushingFallingBlock(<tag:blocks:minecraft:anvil>)
    .crushingLandingBlock(<block:minecraft:stone>)
    .setGhost(true)
    .post([LycheePosts.anvilDamageChance(1),LycheePosts.dropItem(<item:minecraft:redstone_ore>).condition([LycheeConditions.chance(0.5).description("Shoves the redstone into the stone, making a source of redstone!")])]));
LycheeRecipeManager.addRecipe("endslf", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:slime_block>)
    .crushingLandingBlock(<block:minecraft:chorus_flower>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:tconstruct:ender_congealed_slime>).condition([LycheeConditions.chance(0.5).description("Endifies the slime")]),LycheePosts.preventDefault()]));
LycheeRecipeManager.addRecipe("glimmerf", <recipetype:lychee:block_crushing>, new LycheeRecipeBuilder()
    .crushingFallingBlock(<block:minecraft:glowstone>)
    .crushingLandingBlock(<block:botania:livingwood>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:botania:glimmering_livingwood_log>).condition([LycheeConditions.chance(0.5).description("Awaken the dormany crystals")])]));
    LycheeRecipeManager.addRecipe("earthslimecrystf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:minecraft:wheat_seeds>)
    .blockIn(<block:tconstruct:earth_slime_crystal_block>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:tconstruct:budding_earth_slime_crystal>).condition([LycheeConditions.chance(0.5).description("Awaken the dormany crystals")])]));
LycheeRecipeManager.addRecipe("skyslimecrystf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:botania:infused_seeds>)
    .blockIn(<block:tconstruct:sky_slime_crystal_block>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:tconstruct:budding_sky_slime_crystal>).condition([LycheeConditions.chance(0.5).description("Awaken the dormany crystals")])]));
LycheeRecipeManager.addRecipe("endslimecrystf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:tconstruct:ender_slime_grass_seeds>)
    .blockIn(<block:tconstruct:ender_slime_crystal_block>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:tconstruct:budding_ender_slime_crystal>).condition([LycheeConditions.chance(0.5).description("Awaken the dormany crystals")])]));
LycheeRecipeManager.addRecipe("amethycrystf", <recipetype:lychee:block_interacting>, new LycheeRecipeBuilder()
    .itemIn(<item:botania:purple_mushroom>)
    .blockIn(<block:minecraft:amethyst_block>)
    .setGhost(true)
    .post([LycheePosts.dropItem(<item:minecraft:budding_amethyst>).condition([LycheeConditions.chance(0.5).description("Awaken the dormany crystals")])]));
LycheeRecipeManager.addRecipe("soulsandf", <recipetype:lychee:lightning_channeling>, new LycheeRecipeBuilder()
    .post([LycheePosts.dropItem(<item:tconstruct:soul_glass>).condition([LycheeConditions.chance(0.5).description("If there is glass below the lightning rod, place soul glass there.")])])
    .setGhost(true)
    .comment("Channels the fright of the storm into glass below the rod")
);
LycheeRecipeManager.addRecipe("thegodsgracef", <recipetype:lychee:item_burning>, new LycheeRecipeBuilder()
  .itemIn(<item:minecraft:diamond>)
  .setGhost(true)
  .post([LycheePosts.dropItem(<item:minecraft:dark_prismarine>).condition(LycheeConditions.chance(1).description("Requires a dark prismarine below the fire")),LycheePosts.dropItem(<item:minecraft:trident>).condition(LycheeConditions.chance(1).description("The gods' gift."))])
  .comment("If you burn a valuable item atop a block of deep sea green, the gods will grant you a boon."));

