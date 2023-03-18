import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {

    showHandler1 (event){
        console.log('Show event has reached the parent component: c-child-comp');
        console.log(event.target.nodeName); //where this event excaclly originated from
        console.log(event.currentTarget.nodeName);
    }

    showHandler2 (event){
        console.log('Show event has bubbled up from c-child-comp to div');
        console.log(event.target.nodeName); //where this event excaclly originated from
        console.log(event.currentTarget.nodeName);
    }
}