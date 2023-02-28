import { LightningElement } from 'lwc';
import { ShowToastEvent} from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';
import ACCOUNTID_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTID_FIELD from '@salesforce/schema/Case.ContactId';

export default class LightningAssignment1CaseForm extends LightningElement {
    objectApiName = CASE_OBJECT;
    recordId = '500Do000001cOFlIAM';

    fields = {
        subject: SUBJECT_FIELD,
        priority: PRIORITY_FIELD,
        status: STATUS_FIELD,
        description:DESCRIPTION_FIELD,
        origin: ORIGIN_FIELD,
        account: ACCOUNTID_FIELD,
        contact: CONTACTID_FIELD
    }

    successHandler(){
        const successToast = new ShowToastEvent({
            title:'Success',
            message: 'Opportunity has saved successfully!',
            variant: 'success'
        });
        this.dispatchEvent(successToast);
    }
}