import { LightningElement, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class GetObjectInfoAccount extends LightningElement {

    contactDefRtId;
    contactEmpRtId;

    @wire(getObjectInfo, {objectApiName: CONTACT_OBJECT})
    objectInfoHandler({data, error}){
        if(data){
            console.log(data);
            this.contactDefRtId = data.defaultRecordTypeId;

            const rtids = data.recordTypeInfos;
            this.contactEmpRtId = Object.keys(rtids).find(rtid => rtids[rtid].name === 'Employee Contact')
            

        }
        if(error){
            console.log(error);
        }
    }



}