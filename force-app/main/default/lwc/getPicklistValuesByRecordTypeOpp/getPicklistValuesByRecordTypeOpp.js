import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class GetPicklistValuesByRecordTypeOpp extends LightningElement {

    defaultRtId;
    stageNameOptions = [];
    leadSourceOptions = [];
    selectedStageName;
    selectedLeadSource;



    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    objectHandler({data, error}){
        if(data){
            this.defaultRtId = data.defaultRecordTypeId;

        }
        if(error){
            console.error(error);
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data, error}){
        if(data){
            console.log(data);
            this.stageNameOptions = data.picklistFieldValues.StageName.values;
            this.leadSourceOptions = data.picklistFieldValues.LeadSource.values;
        }
        if(error){
            console.error(error);
        }
    }

    changeHandler(event){
        if(event.target.name === 'StageName'){
            this.selectedStageName = event.target.value;
        }else{
            this.selectedLeadSource = event.target.value;
        }
    }

    
}