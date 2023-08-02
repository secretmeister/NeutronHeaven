#priority 727
#modloaded lychee


import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.StringData;
import crafttweaker.api.util.math.BlockPos;

/*
    Vanilla syntax for Location Predicate, may migrate to not be specific to lychee in the future.
    Reference the Minecraft wiki for more specific info. https://minecraft.fandom.com/wiki/Predicate
*/
public class LycheeLocationPredicate {

    private var data as MapData;

    public this() {
        this.data = {"predicate": {}};
    }
    public this(data as MapData) {
        this.data = data;
    }

    private getPredicate() as MapData {
        return (data.getAt("predicate") as IData) as MapData;
    }

    public offset(offset as BlockPos) as LycheeLocationPredicate {
        data.put("offsetX", offset.x);
        data.put("offsetY", offset.y);
        data.put("offsetZ", offset.z);
        return this;
    }

    public biome(biome as string) as LycheeLocationPredicate {
        getPredicate().put("biome", biome);
        return this;
    }

    public dimension(dimension as string) as LycheeLocationPredicate {
        getPredicate().put("dimension", dimension);
        return this;
    }

    public block(block as LycheeBlock) as LycheeLocationPredicate {
        getPredicate().put("block", block);
        return this;
    }

    public fluid(fluid as LycheeBlock) as LycheeLocationPredicate {
        getPredicate().put("fluid", fluid);
        return this;
    }

    public light(light as IntBounds) as LycheeLocationPredicate {
        getPredicate().put("light", light);
        return this;
    }

    public smokey(isSmokey as bool) as LycheeLocationPredicate {
        getPredicate().put("smokey", isSmokey);
        return this;
    }

    public structure(structure as string) as LycheeLocationPredicate {
        getPredicate().put("structure", structure);
        return this;
    }
    /*
        I know this has really weird syntax but this is the best way I could get this could work
        position is a map that looks something like this
        [
            "x": new IntBounds(min, max),
            "y": new IntBounds(min, max),
            "z": new IntBounds(min, max)
        ]
        You can omit x y or z but you must have one of those
    */
    public position(position as IntBounds[string]) as LycheeLocationPredicate {
        var posMap as MapData = {};
        for k, v in position {
            posMap.put(k, v);
        }
        getPredicate().put("position", posMap);
        return this;
    }
    


    public asData() as IData {
        return {};
    }
    public implicit as IData => asData();
}