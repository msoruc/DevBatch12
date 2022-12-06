public class Collection {
    public static string listAssignment(integer lst){
        list<string> LstMonth =new list<string>{'January','February','March','April','May','June','July','August','September','October','November','December'};
        string output_month = '';

        if (lst<=12){
            output_month =LstMonth.get(lst-1);
        }else {
            output_month = 'Not a valid Month';
        }
        system.debug(output_month);
        return output_month;
    }
}
