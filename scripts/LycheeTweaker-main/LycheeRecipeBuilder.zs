#priority 727
#modloaded lychee

import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

/*
    It is HIGHLY recommended to check the Lychee wiki in order to fully understand how the mod works.
    Note: almost everything here should work on Fabric EXCEPT LycheeIngredients with nbt data.
*/
public class LycheeRecipeBuilder {

    private var recipe as MapData;

    /*
        Create a blank recipe at the start.
    */
    public this() {
        recipe = {};
    }

    public getRecipe() as MapData => recipe;
    
    /*
        Add a condition to the recipe. See LycheeCondition.zs for more info.
    */
    public condition(condition as LycheeCondition) as LycheeRecipeBuilder {
        recipe.put("contextual", condition);
        return this;
    }

    /*
        Add multiple conditions to the recipe. See LycheeCondition.zs for more info.
    */
    public condition(conditions as LycheeCondition[]) as LycheeRecipeBuilder {
        var conditionList = new stdlib.List<IData>();
        for condition in conditions {
            conditionList.add(condition as IData);
        }
        recipe.put("contextual", new ListData(conditionList));
        return this;
    }

    /*
        Add a post action to the recipe. See LycheePost.zs for more info.
    */
    public post(post as LycheePost) as LycheeRecipeBuilder {
        recipe.put("post", post);
        return this;
    }

    /*
        Add multiple post actions to the recipe. See LycheePost.zs for more info.
    */
    public post(posts as LycheePost[]) as LycheeRecipeBuilder {
        var postList = new stdlib.List<IData>();
        for post in posts {
            postList.add(post as IData);
        }
        recipe.put("post", new ListData(postList));
        return this;
    }

    /*
        Adds a comment to put when you hover over the (i) in JEI
    */
    public comment(comment as string) as LycheeRecipeBuilder {
        recipe.put("comment", comment);
        return this;
    }

    /*
        If true, recipe appears in JEI but does not do anything.
    */
    public setGhost(isGhost as bool) as LycheeRecipeBuilder {
        recipe.put("ghost", isGhost);
        return this;
    }

    /*
        Whether or not to hide in JEI.
    */
    public setHideInJEI(shouldHide as bool) as LycheeRecipeBuilder {
        recipe.put("hide_in_viewer", shouldHide);
        return this;
    }

    /*
        Some recipes are repeatable, this allows you to control how much they can be repeated
    */
    public setMaxRepeats(repeats as int) as LycheeRecipeBuilder {
        recipe.put("max_repeats", repeats);
        return this;
    }

    // ==================================================================================================== //
    // For everything below this line, check on the wiki FIRST if the recipe supports the given input type. //
    // ==================================================================================================== //


    /*
        Adds an item input to the recipe. See LycheeIngredient.zs for more info.
    */
    public itemIn(ingredient as LycheeIngredient) as LycheeRecipeBuilder {
        recipe.put("item_in", ingredient);
        return this;
    }

    /*
        Multiple item inputs.
    */
    public itemIn(ingredients as LycheeIngredient[]) as LycheeRecipeBuilder {
        var ingredientList = new stdlib.List<IData>();
        for ingredient in ingredients {
            ingredientList.add(ingredient as IData);
        }
        recipe.put("item_in", new ListData(ingredientList));
        return this;
    }
    /*
        Adds a block input to the recipe. See LycheeBlock.zs for more info.
    */
    public blockIn(block as LycheeBlock) as LycheeRecipeBuilder {
        recipe.put("block_in", block);
        return this;
    }

    /*
        Waiting time for Item Entity inside a Block recipes (lychee:item_inside)
    */
    public insideBlockTime(time as int) as LycheeRecipeBuilder {
        recipe.put("time", time);
        return this;
    }

    /*
        Output item for anvil recipes (lychee:anvil_crafting)
    */
    public anvilItemOut(stack as IItemStack) as LycheeRecipeBuilder {
        recipe.put("item_out", stack);
        return this;
    }
    /*
        XP level cost for anvil recipes (lychee:anvil_crafting)
    */
    public anvilLevelCost(cost as int) as LycheeRecipeBuilder {
        recipe.put("level_cost", cost);
        return this;
    }
    /*
        Amount of materials consumed by anvil recipes (lychee:anvil_crafting)
    */
    public anvilMaterialCost(cost as int) as LycheeRecipeBuilder {
        recipe.put("material_cost", cost);
        return this;
    }

    /*
        Block that is falling in block crushing recipes (lychee:block_crushing)
    */
    public crushingFallingBlock(block as LycheeBlock) as LycheeRecipeBuilder {
        recipe.put("falling_block", block);
        return this;
    }
    /*
        Block that is landed upon in block crushing recipes (lychee:block_crushing)
    */
    public crushingLandingBlock(block as LycheeBlock) as LycheeRecipeBuilder {
        recipe.put("landing_block", block);
        return this;
    }

}