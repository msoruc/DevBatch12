import { LightningElement } from 'lwc';

export default class LightningAssignment1Calculator extends LightningElement {
    num1;
    num2;
    result;

    changeHandler(event){
        if(event.target.name=='value1'){
            this.num1 = event.target.value;
        }else{
            this.num2 = event.target.value;
        }

        if(this.num1 == undefined){
            this.num1 = 0;
        }else if(this.num2 == undefined){
            this.num2 = 0;
        }

        this.result = Number(this.num1) + Number(this.num2);
    }

}