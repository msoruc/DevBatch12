import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

export default class GetPicklistValuesIndustry extends LightningElement {

    defaultRtId;
    industryOptions = [];

    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    objectInfoHandler({data, error}) {
        if(data){
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){
            console.error(error);
        }
    }

    @wire(getPicklistValues, {fieldApiName: INDUSTRY_FIELD, recordTypeId: '$defaultRtId'}) 

    //$ (reactive) sign will indicate that wait until the value change and run the wire service one more time sample: $defaultRtI

    picklistHandler({data, error}){
        if(data){
            console.log(data);
            this.industryOptions = data.values;
        }
        if(error){
            console.error(error);
        }
    }

}