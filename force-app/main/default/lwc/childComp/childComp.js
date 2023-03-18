import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {

    clickHandler(){
        console.log('User has click the button, about the create an event');
        const showEvent = new CustomEvent('show', {bubbles: true, composed: true});
        this.dispatchEvent(showEvent);
        console.log('Show event has been dispatched from the child component');
    }
}