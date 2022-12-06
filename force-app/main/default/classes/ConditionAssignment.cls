public class ConditionAssignment {
    public string findMonth(integer whichMonth){
        string findMonth = '';
        if(whichMonth==1){
            findMonth='January';
        }else if(whichMonth==2){
            findMonth='February';
        }else{
            findMonth='Not a valid month';
        }
        return findMonth;
    }

    public string findQuarter(string whichMonth){
        string findQuarter='';
        if(whichMonth=='January' || whichMonth=='February' || whichMonth=='March'){
            findQuarter='Quarter 1';
        }else{
            findQuarter='Not a valid Quarter';
        }
        return findQuarter;
    }
}
