import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullname = "Murat";
    title = "Salesforce Developer";

    changeHandler(event){
        this.title = event.target.value;
    }

}
