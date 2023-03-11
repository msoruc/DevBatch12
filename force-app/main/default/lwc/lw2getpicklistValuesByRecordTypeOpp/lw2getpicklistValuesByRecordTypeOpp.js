import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class Lw2getpicklistValuesByRecordTypeOpp extends LightningElement {

    typeOptions = [];
    stageOptions = [];
    selectedName;
    selectedStage;
    selectedType;

    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    objectInfo;

    @wire(getPicklistValuesByRecordType, {objectApiName: OPP_OBJECT, recordTypeId: '$objectInfo.data.defaultRecordTypeId'})
    picklistHandler({data, error}){
        if(data){
            console.log(data);
            this.typeOptions = data.picklistFieldValues.Type.values;
            this.stageOptions = data.picklistFieldValues.StageName.values;
        }
        if(error){
            console.error(error);
        }
    }

    changeHandler(event){
        if(event.target.name === 'Name'){
            this.selectedName = event.target.value;
        }else if(event.target.name === 'StageName'){
            this.selectedStage = event.target.value;
        }else{
            this.selectedType = event.target.value;
        }
    }
}