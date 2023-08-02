#priority 727
#modloaded lychee


import crafttweaker.api.recipe.IRecipeManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;

/*
    This is how you will be making your Lychee recipes, by calling LycheeRecipeManager.addRecipe(). No remove method because like... why would you. 
    If you really need to remove, just do <recipetype:lychee:type>.removeByName(name).
*/
public class LycheeRecipeManager {

    public static addRecipe(name as string, recipeType as IRecipeManager<Recipe<Container>>, builder as LycheeRecipeBuilder) as void {
        recipeType.addJsonRecipe(name, builder.getRecipe());
    }
}