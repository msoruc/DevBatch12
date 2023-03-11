import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

const FIELDS = [NAME_FIELD, REVENUE_FIELD, INDUSTRY_FIELD];

export default class GetRecordAccount extends LightningElement {
    
    recordId = '001Do000003DzSsIAK';
    name;
    revenue;
    industry;

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    recordHandler({data, error}){
        if(data){
            console.log(data);
            this.name = getFieldValue(data, NAME_FIELD);
            this.revenue = getFieldDisplayValue(data, REVENUE_FIELD);
            this.industry = getFieldValue(data, INDUSTRY_FIELD);
        }
        if(error){
            console.error(error);
        }
    }
}