#priority 727
#modloaded lychee


import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.StringData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.BlockPos;
import crafttweaker.api.util.Pair;
import stdlib.List;

public class LycheeCondition {
    
    private var data as MapData : get;
    public this(type as string, data as MapData) {
        this.data = ({"type": type} as MapData).merge(data);
    }

    /*
        If isSecret is true, the condition won't appear in JEI
    */
    public secret(isSecret as bool) as LycheeCondition {
        data.put("secret", isSecret);
        return this;
    }
    /*
        Adds a description when you hover over the (i) for conditions.
    */
    public description(desc as string) as LycheeCondition {
        data.put("description", desc);
        return this;
    }

    public asData() as IData => data;
    public implicit as IData => data;


    public |(other as LycheeCondition) as LycheeCondition {
        return LycheeConditions.or([this, other]);
    }

    public !() as LycheeCondition {
        return LycheeConditions.not(this);
    }

    public &(other as LycheeCondition) as LycheeCondition {
        return LycheeConditions.and([this, other]);
    }

    public ^(other as LycheeCondition) as LycheeCondition {
        return LycheeConditions.xor(this, other);
    }
}

/*
    Class containing static methods to easily create LycheeConditions. Recommended you use these instead of using the exposed constructors in LycheeCondition. 
*/
public class LycheeConditions {
    
    /*
        Logic conditions. not, and, and or are provided by Lychee, the rest are custom built off of those.
    */
    public static not(condition as LycheeCondition) as LycheeCondition => new LycheeCondition("not", {"contextual": condition as IData});

    public static and(conditions as LycheeCondition[]) as LycheeCondition {
        var conditionList = new stdlib.List<IData>();
        for condition in conditions {
            conditionList.add(condition as IData);
        }
        return new LycheeCondition("and", {"contextual": new ListData(conditionList)});
    }

    public static or(conditions as LycheeCondition[]) as LycheeCondition {
        var conditionList = new stdlib.List<IData>();
        for condition in conditions {
            conditionList.add(condition as IData);
        }
        return new LycheeCondition("or", {"contextual": new ListData(conditionList)});
    } 

    public static nand(conditions as LycheeCondition[]) as LycheeCondition => not(and(conditions));

    public static nor(conditions as LycheeCondition[]) as LycheeCondition => not(or(conditions));

    /*
        Recommended you hide xor and xnor in JEI, as they look very weird in the preview
    */
    public static xor(condition1 as LycheeCondition, condition2 as LycheeCondition) as LycheeCondition => and([nand([condition1, condition2]), or([condition1, condition2])]);

    public static xnor(condition1 as LycheeCondition, condition2 as LycheeCondition) as LycheeCondition => not(xor(condition1, condition2));

    //True if the number of true inputs is odd.
    public static xor(conditions as LycheeCondition[]) as LycheeCondition {
        var out as LycheeCondition = xor(conditions[0], conditions[1]);
        if conditions.length < 3 return out;

        //Need to use indexes and stuff
        for i in 2 .. conditions.length {
            out = xor(out, conditions[2]);
        }

        return out;

    }
    public static xnor(conditions as LycheeCondition[]) as LycheeCondition => not(xor(conditions));

    /*
        Returns true if and only if ONE of the inputs is true.
        Broken, no plans to fix unless someone really wants me to.
    */
    // public static onlyOne(conditions as LycheeCondition[]) as LycheeCondition {
        
    //     var orList = new List<LycheeCondition>();

    //     for condition in conditions {
    //         var nandList = new List<LycheeCondition>();
    //         for con in conditions {
    //             if !(con === condition) nandList.add(con);
    //         }
    //         orList.add(and([condition, nand(nandList)]));
    //     }
    //     return or(orList);
    // }

    /*

        Regular conditions here. Most are self explanatory
    */
    public static chance(chance as double) as LycheeCondition => new LycheeCondition("chance", {"chance": chance});

    /*
        Not recommended, recommended to use the individual location predicate stuff below.
    */
    public static location(predicate as LycheeLocationPredicate, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": predicate
    });

    public static weather(weather as string) as LycheeCondition => new LycheeCondition("weather", {"weather": weather});

    public static difficulty(difficulty as string) as LycheeCondition => new LycheeCondition("difficulty", {"difficulty": difficulty});
    
    public static difficulty(difficulty as int) as LycheeCondition => new LycheeCondition("difficulty", {"difficulty": difficulty});
    
    public static difficulty(difficulties as string[]) as LycheeCondition {
        var difficultyList = new stdlib.List<IData>();
        for difficulty in difficulties {
            difficultyList.add(difficulty);
        }
        return new LycheeCondition("difficulty", {"difficulty": new ListData(difficultyList)});
    }

    
    public static difficulty(difficulties as int[]) as LycheeCondition {
        //Have to add each value manually because java generics are weird
        var difficultyList = new List<int>();
        for difficulty in difficulties {
            difficultyList.add(difficulty);
        }
        return new LycheeCondition("difficulty", {"difficulty": new ListData(difficultyList)});
    }

    public static time(value as IntBounds, period as int) as LycheeCondition => new LycheeCondition("time", {
        "value": value,
        "period": period
    });

    public static command(command as string, value as IntBounds) as LycheeCondition => new LycheeCondition("execute", {
        "command": command,
        "value": value
    });
    
    public static fallDistance(distance as DoubleBounds) as LycheeCondition => new LycheeCondition("fall_distance", {
        "range": distance
    });

    public static entityHealth(health as DoubleBounds) as LycheeCondition => new LycheeCondition("entity_health", {
        "range": health
    });

    public static isSneaking() as LycheeCondition => new LycheeCondition("is_sneaking", {});

    // =================================================== //
    // Custom conditions for easier Location Predicate use //
    // =================================================== //

    public static biome(biome as string, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "biome": biome
        }
    });

    public static dimension(dimension as string, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "dimension": dimension
        }
    });

    public static block(block as LycheeBlock, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "block": block
        }
    });

    //Doing stuff like <block:minecraft:water> is still valid!
    public static fluid(fluid as LycheeBlock, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "fluid": fluid
        }
    });

    public static light(light as IntBounds, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "light": light
        }
    });

    public static smokey(isSmokey as bool, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "smokey": isSmokey
        }
    });

    public static structure(structure as string, offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition => new LycheeCondition("location", {
        "offsetX": offset.x,
        "offsetY": offset.y,
        "offsetZ": offset.z,
        "predicate": {
            "structure": structure
        }
    });

    /*
        I know this has really weird syntax but this is the best way I could get this could work
        position is a map that looks something like this
        [
            "x": new IntBounds(min, max),
            "y": new IntBounds(min, max),
            "z": new IntBounds(min, max)
        ]
        You can omit x y or z but you must have one of these
    */
    public static position(position as IntBounds[string], offset as BlockPos = new BlockPos(0,0,0)) as LycheeCondition {
        var posMap as MapData = {};
        for k, v in position {
            posMap.put(k, v);
        }
        
        return new LycheeCondition("location", {
            "offsetX": offset.x,
            "offsetY": offset.y,
            "offsetZ": offset.z,
            "predicate": {
                "position": posMap
            }
        });
    } 

}