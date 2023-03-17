import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {

    fruits = ['Orange', 'Apple', 'Banana', 'Grape'];

    clickHandler(){
        //querySelector Demo
        const headerElement = this.template.querySelector('h1'); //you can select any elements in this way
        console.log(headerElement.innerText);
        headerElement.style.color = 'blue';
        headerElement.style.backgroundColor = 'yellow';
        headerElement.style.border = '2px solid green';

        const paragraphElement = this.template.querySelector('p');
        paragraphElement.style.color = 'red';
        paragraphElement.style.backgroundColor = 'green';
        paragraphElement.style.border = '4px dotted black';

        //querySelectors Demo
        const divElements = this.template.querySelectorAll('div.child');
        divElements.forEach(item => {
            console.log(item.innerText);
            item.setAttribute('class', 'slds-align_absolute-center');
        });
    }
}