public class LowestNumber {
    public decimal lowestNum (list<decimal> list123){
        decimal lowest;

        if (!list123.isEmpty()){
            lowest = list123.get(0);

            for (decimal eachlist : list123){
                if (eachlist<lowest){
                    lowest = eachlist;
                }else {
                    system.debug(lowest);
                }
            }
        }else {
            system.debug('list is empty!');
        }


        return lowest;
    }
}
