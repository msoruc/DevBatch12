import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import STAGE_FILED from '@salesforce/schema/Opportunity.StageName';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import getTopOpportunities from '@salesforce/apex/OpportunityCTRL.getTopOpportunities';

const COLUMNS = [
    {label: 'Opp Name', fieldName: 'Name', type: 'text'},
    {label: 'Type', fieldName: 'Type', type: 'text'},
    {label: 'Amount', fieldName: 'Amount', type: 'currency'},
    {label: 'Close Date', fieldName: 'CloseDate', type: 'date'}
];

export default class OppsByStage extends LightningElement {
    stageOptions;
    opps;
    error = 'Please select a stage in order to see the matching opportunities.';
    columns = COLUMNS;

    @wire(getObjectInfo, {objectApiName: OPP_OBJECT})
    oppInfo;

    @wire(getPicklistValues, {fieldApiName: STAGE_FILED, recordTypeId: '$oppInfo.data.defaultRecordTypeId'})

    picklistHandler({data, error}){
        if(data){
            this.stageOptions = data.values;
        }
        if(error){
            console.error(error);
        }
    }

    changeHandler(event){
        const selectedStage = event.target.value;
        getTopOpportunities({stage: selectedStage})
            .then(result => {
                if(result.length > 0) {
                    this.opps = result;
                    this.error = undefined;
                }else{
                    this.opps = undefined;
                    this.error = 'There are no matching opportunities under selected stage. Please choose another!'
                }
            })
            .catch(error => {
                this.opps = undefined;
                this.error = error.body.message;
            })
    }

}