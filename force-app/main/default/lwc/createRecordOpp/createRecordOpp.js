import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';


import OPP_OBJECT from '@salesforce/schema/Opportunity';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';


export default class CreateRecordOpp extends LightningElement {

    
    stageOptions = [];
    formdata = {};


    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    oppInfo;

    @wire(getPicklistValues, {fieldApiName: STAGENAME_FIELD, recordTypeId: '$oppInfo.data.defaultRecordTypeId'})

    picklistHandler({data, error}){
        if(data){
            this.stageOptions = data.values;
        }
        if(error){
            console.error(error);
        }
    }

    changeHandler(event){
        const {name, value} = event.target;
        this.formdata[name] = value;
        console.log(JSON.stringify(this.formdata)); //console.log(this.formdata);
    }

    saveOpp(){
        const recordInput = {
        apiName: OPP_OBJECT.objectApiName,
        fields: this.formdata
        }

        createRecord(recordInput)
        .then(result => {
            const successMessage = new ShowToastEvent({
                title: 'Success',
                message: 'Opportunity has been saved successfully!',
                variant: 'success'
            });
            this.dispatchEvent(successMessage);
        }).catch(error => {
            console.error(error);
        });

    }

    cancelOpp(){
        this.template.querySelector('form.oppform').reset();
        this.template.querySelector('lightning-combobox').value = undefined;
        this.formdata = {};
    }

}


    
