import { LightningElement, wire } from 'lwc';
import GetAccounts from '@salesforce/apex/RecenetlyCreatedAccountsHandler.fetchAcc';

const COLS = [{ label: 'Name', fieldName: 'Name' },
{ label: 'Type', fieldName: 'Type' },
{ label: 'AnnualRevenue', fieldName: 'AnnualRevenue' },
{ label: 'Phone', fieldName: 'Phone' }
];

export default class DisplayRecentlyCreatedAccounts extends LightningElement {

    dataList
    columnsList
    connectedCallback() {
        this.columnsList = COLS;
    }
    @wire(GetAccounts)
    accountData({ error, data }) {
        if (data) {
            console.log('Wire Response' + data);
            this.dataList = data;
        }
        if (error) {
            console.error(error);
        }
    }
}

