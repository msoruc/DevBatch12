import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import MOBILE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';

const FIELDS = [FIRSTNAME_FIELD, LASTNAME_FIELD, TITLE_FIELD, EMAIL_FIELD, MOBILE_FIELD, DEPARTMENT_FIELD];

export default class Lwc2getRecordContact extends LightningElement {

    recordId = '003Do000002PpguIAC';
    contact;
    fName;
    lName;
    email;
    mobile;
    department;


    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    contactInfoHandler({data, error}){
        if(data){
            console.log(data);
            this.contact = data;
            this.fName = getFieldValue(data, FIRSTNAME_FIELD);
            this.lName = getFieldValue(data, LASTNAME_FIELD);
            this.email = data.fields.Email.value;
            this.mobile = getFieldValue(data, MOBILE_FIELD);
            this.department = getFieldValue(data, DEPARTMENT_FIELD);
        }
        if(error){
            console.error(error);
        }
    }

    // get Name(){
    //     return getFieldValue(this.contact, NAME_FIELD) + '' + getFieldValue(this.contact, LASTNAME_FIELD);
    // }
}