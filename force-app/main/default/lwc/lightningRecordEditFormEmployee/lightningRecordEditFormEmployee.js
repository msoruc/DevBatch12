import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import EMPLOYEE_OBJECT from '@salesforce/schema/Employee__c';
import NAME_FIELD from '@salesforce/schema/Employee__c.Employee_Name__c';
import GENDER_FIELD from '@salesforce/schema/Employee__c.Gender__c';
import EMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import DESIGNATION_FIELD from '@salesforce/schema/Employee__c.Designation__c';
import ADDRESS_FIELD from '@salesforce/schema/Employee__c.Complete_Address__c';

export default class LightningRecordEditFormOpp extends LightningElement {
    
    objectName = EMPLOYEE_OBJECT;
    
    fields = {
        name: NAME_FIELD,
        gender: GENDER_FIELD,
        email: EMAIL_FIELD,
        designation: DESIGNATION_FIELD,
        address: ADDRESS_FIELD
    };

    successHandler(){
        const successToast = new ShowToastEvent({
            title:'Success',
            message: 'Opportunity has saved successfully!',
            variant: 'success'
        });
        this.dispatchEvent(successToast);
    }
}