import { LightningElement } from 'lwc';
import EMPLOYEE_OBJECT from '@salesforce/schema/Employee__c';

export default class ModalChild extends LightningElement {

    objectName = EMPLOYEE_OBJECT;

    clickHandler(){
        /* Simple Event
        const closeEvent = new CustomEvent('close');
        this.dispatchEvent(closeEvent);
        */
       /* Event with primitive data 
       let message = 'User wants the child to be closed, hence closed!';
       const closeEvent = new CustomEvent('close', {detail: message});
       this.dispatchEvent(closeEvent);*/
       /* Event with non primitive data*/
       let message = {
            Id: 1,
            Name: 'Murat',
            Company: 'Microsoft',
            Position: 'CEO'
       }
       const closeEvent = new CustomEvent('close', {detail: message});
       this.dispatchEvent(closeEvent);
    }
}