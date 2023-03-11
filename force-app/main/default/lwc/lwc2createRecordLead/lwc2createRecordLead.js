import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'


import LEAD_OBJECT from '@salesforce/schema/Lead';


export default class Lwc2createRecordLead extends LightningElement {

    formdata = {};

    @wire(getObjectInfo, {objectApiName: LEAD_OBJECT})
    leadInfo;

    changeHandler(event){
        const {name, value} = event.target;
        this.formdata[name] = value;
        console.log(JSON.stringify(this.formdata));
    }

    saveLead(){
        const recordInput = {
            apiName: LEAD_OBJECT.objectApiName,
            fields: this.formdata
        }
        createRecord(recordInput)
        .then(result => {
            const successMessage = new ShowToastEvent({
                title: 'Success',
                message: 'Lead saved successfully!',
                variant: 'success'
            });

            this.dispatchEvent(successMessage);
        })
        .catch(error => {
            console.error(error);
        });
    }
    cancelLead(){
        this.template.querySelector('form.leadform').reset();
        this.formdata = {};
    }
}   