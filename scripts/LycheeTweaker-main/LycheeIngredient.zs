#priority 727
#modloaded lychee

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.ItemDefinition;

/*
    Lychee Ingredients wrap Lychee's format for representing IIngredients. They can have an item/tag to represent, and (forge only) optionally a tag.
*/
public class LycheeIngredient {
    
    private val ingredient as IIngredient : get;
    private val nbt as MapData? : get;
    public this(ingredient as IIngredient) {
        this.ingredient = ingredient;
        this.nbt = null;
    }

    /*
        If on Fabric, do NOT pass in nbt. This does not and will not work.
    */
    public this(stack as IItemStack) {
        this.ingredient = stack;
        this.nbt = stack.tag;
    }


    public asData() as IData {
        if nbt == null {
            return ingredient as IData;
        }
        return {
            "type": "forge:nbt",
            "item": ingredient.items[0].registryName,
            "nbt": nbt
        };
    }
    public implicit as IData => asData();

}

/*
    Adds implicit casting to IIngredients, Item tags, and IItemStacks.
*/

public expand IIngredient {
    
    public asLycheeIngredient() as LycheeIngredient => new LycheeIngredient(this);
    public implicit as LycheeIngredient => new LycheeIngredient(this);
}

public expand IItemStack {

    public asLycheeIngredient() as LycheeIngredient => new LycheeIngredient(this);
    public implicit as LycheeIngredient => new LycheeIngredient(this);
}

public expand KnownTag<ItemDefinition> {
    
    public asLycheeIngredient() as LycheeIngredient => new LycheeIngredient(this);
    public implicit as LycheeIngredient => new LycheeIngredient(this as IIngredient);
}