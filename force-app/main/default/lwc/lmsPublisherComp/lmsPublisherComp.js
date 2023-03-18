import { MessageContext, publish } from 'lightning/messageService';
import { LightningElement, wire } from 'lwc';
import LMS_CHANNEL from '@salesforce/messageChannel/LMSChannel__c';

export default class LmsPublisherComp extends LightningElement {

    messageValue;

    @wire(MessageContext)
    context;

    changeHandler(event){
        this.messageValue = event.target.value;
    }

    publishMessage(){
        const message = {
            lmsData: this.messageValue
        }
        console.log(JSON.stringify(message));
        console.log('I am about the puclish the message!');
        publish(this.context, LMS_CHANNEL, message);
        console.log('The message has been published.')
    }
}