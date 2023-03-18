import { LightningElement } from 'lwc';

export default class GrandParentComp extends LightningElement {

    showHandler(event){
        console.log('Show event has composed through shadow boundry and reached hte grand parent');
        console.log(event.target.nodeName); //where this event excaclly originated from
        console.log(event.currentTarget.nodeName);
    }
}