#priority 727

/*
    Similar to Percentaged<T> but with ints for weights.
*/
public class Weighted<T> {
    public val data as T : get;
    public val weight as int : get;

    public this(data as T, weight as int) {
        this.data = data;
        this.weight = weight;
    }

    public getData() as T => data;
    public getWeight() as int => weight;
}