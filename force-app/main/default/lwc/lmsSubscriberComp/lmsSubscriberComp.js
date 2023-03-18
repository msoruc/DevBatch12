import { LightningElement, wire } from 'lwc';
import LMS_CHANNEL from '@salesforce/messageChannel/LMSChannel__c';
import { APPLICATION_SCOPE, MessageContext, subscribe } from 'lightning/messageService';

export default class LmsSubscriberComp extends LightningElement {

    message;

    @wire(MessageContext)
    context;

    connectedCallback(){
        this.subscribeHandler();
    }

    subscribeHandler(){
        subscribe(
            this.context,
            LMS_CHANNEL,
            (message) => { this.handleMessage(message) },
            {scope: APPLICATION_SCOPE}
        )
    }

    handleMessage(message){
        console.log('Message reached subscriber comp');
        console.log(JSON.stringify(message));
        this.message = message.lmsData;
    }

}