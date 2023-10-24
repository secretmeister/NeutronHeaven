recipes.remove(<item:dimpaintings:nether_painting>);
recipes.remove(<item:dimpaintings:end_painting>);
craftingTable.remove(<item:minecraft:netherite_ingot>);
craftingTable.remove(<item:minecraft:end_crystal>);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("endit")
    .transitionTo(<item:minecraft:painting>)
    .require(<item:minecraft:painting>)
    .loops(2)
    .addOutput(<item:dimpaintings:end_painting>, 1)
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:molten_queens_slime> * 360))
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:molten_netherite> * 900))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:end_stone_bricks>))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:tconstruct:ender_cake>))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:end_crystal>))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:elytra>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("cry")
    .transitionTo(<item:minecraft:obsidian>)
    .require(<item:minecraft:ice>)
    .loops(1)
    .addOutput(<item:minecraft:crying_obsidian>, 1)
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 1200))
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:molten_manyullyn> * 90))
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:tconstruct:molten_hepatizon> * 90)));
<recipetype:pneumaticcraft:pressure_chamber>.addJsonRecipe("endcry",{
  "type": "pneumaticcraft:pressure_chamber",
  "inputs": [
    {
      "item": "minecraft:tnt"
    },
    {
      "item": "minecraft:crying_obsidian"
    },
    {
      "item": "pneumaticcraft:smooth_plastic_brick_magenta"
    },
    {
      "item": "minecraft:chorus_flower"
    },
    {
      "item": "minecraft:glass"
    },
    {
      "item": "botania:dragonstone"
    }
  ],
  "pressure": 4,
  "results": [
    {
      "item": "minecraft:end_crystal"
    }]});
