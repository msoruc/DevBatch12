import getTopOpportunities from '@salesforce/apex/OpportunityCTRL.getTopOpportunities';
import { LightningElement, wire } from 'lwc';

export default class WiredApex2 extends LightningElement {
    stageName = 'Closed Won';

    @wire(getTopOpportunities, {stage: '$stageName'})
    opps;

}