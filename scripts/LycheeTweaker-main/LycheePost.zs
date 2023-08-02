#priority 727
#modloaded lychee

import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.BlockPos;
import stdlib.List;

public class LycheePost {

    protected var data as MapData : get;

    public this(type as string, data as MapData) {
        this.data = ({"type": type} as MapData).merge(data);
    }
    public this(type as string) {
        this.data = {"type": type};
    }

    public withWeight(weight as int) as LycheePost {
        data.put("weight", weight);
        return this;
    }

    public condition(condition as LycheeCondition) as LycheePost {
        data.put("contextual", condition);
        return this;
    }

    public condition(conditions as LycheeCondition[]) as LycheePost {
        var conditionList = new stdlib.List<IData>();
        for condition in conditions {
            conditionList.add(condition as IData);
        }
        data.put("contextual", new ListData(conditionList));
        return this;
    }
    
    public asData() as IData => data;
    public implicit as IData => data;
}

public class LycheePosts {
    public static dropItem(stack as IItemStack) as LycheePost {
        var data as MapData = {"item": stack.registryName, "count": stack.amount};
        if stack.tag != null data.put("nbt", stack.tag);
        return new LycheePost("drop_item", data);
    }

    public static placeBlock(block as LycheeBlock, offset as BlockPos = new BlockPos(0, 0, 0)) as LycheePost {
        return new LycheePost("place", {
            "block": block,
            "offsetX": offset.x,
            "offsetY": offset.y,
            "offsetZ": offset.z
        });
    }

    public static executeCommand(command as string, shouldHide as bool = false) as LycheePost {
        return new LycheePost("execute", {
            "command": command,
            "hide": shouldHide
        });
    }

    public static dropXp(xp as int) as LycheePost {
        return new LycheePost("drop_xp", {
            "xp": xp
        });
    }

    public static random(entries as LycheePost[], min as int = 1, max as int = 1) as LycheePost {
        var entryList = new stdlib.List<IData>();
        for entry in entries {
            entryList.add(entry as IData);
        }
        return new LycheePost("random", {
            "rolls": {
                "min": min,
                "max": max
            },
            "entries": new ListData(entryList)
        });
    }

    public static preventDefault() as LycheePost => new LycheePost("prevent_default");

    public static damageItem(damage as int) as LycheePost {
        return new LycheePost("damage_item", {
            "damage": damage
        });
    }

    public static anvilDamageChance(chance as double) as LycheePost {
        return new LycheePost("anvil_damage_chance", {
            "chance": chance
        });
    }

    public static explode(radius as int = 4, radiusStep as double = 0.5, offset as BlockPos = new BlockPos(0,0,0), blockInteraction as string = "break", onFire as bool = false) as LycheePost {
        return new LycheePost("explode", {
            "offsetX": offset.x,
            "offsetY": offset.y,
            "offsetZ": offset.z,
            "fire": onFire,
            "block_interaction": blockInteraction,
            "radius": radius,
            "radius_step": radiusStep
        });
    }
}