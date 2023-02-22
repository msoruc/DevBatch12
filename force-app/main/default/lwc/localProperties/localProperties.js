import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    age = 39;
    fullname = 'Salesforce Developer';
    location = {
        city: 'Houston',
        country: 'USA',
        postalCode: '77077'
    };
    fruits = ['Orange', 'Banana', 'Apple'];
}