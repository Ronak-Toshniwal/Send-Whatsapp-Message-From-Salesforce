import { LightningElement, wire, api, track } from 'lwc';
import sendMessageMethod from '@salesforce/apex/getMetadataAndRecordData.sendWAMsg';
import sendDocToDocument from '@salesforce/apex/getMetadataAndRecordData.sendWADocument'


export default class StagesAndWhatsappMessageIndicator extends LightningElement {
    @api recordId;
    mapWithPicklistValues = new Set();

    /*
    @wire(getRecord, { recordId: '$recordId', fields: STAGENAME_FIELD })
    wiredRecord({ error, data }) {
        
        if (error) {
            console.log('error '+error)
        } else if (data) {
            this.contact = data;
            //console.log('data ' +JSON.stringify(data) )
        }
    }

    //recordTypeId;
    @wire(getPicklistValues, { recordTypeId: this.contact.recordTypeId, fieldApiName: STAGENAME_FIELD })
    propertyOrFunction;
    //recordTypeId = this.contact.recordTypeId
    //picklistValues = this.propertyOrFunction.data.values
   
*/
    connectedCallback(){
       
    }    

    recordPhone = '919999999999'
    message = ''
    msgSetter(event){
        this.message = event.target.value;
    }

    sendMsg(event){
        //on click send message which is written in text box.
        console.log('if status Code is 200 but still not recieving message send a sample text message to +1 555 0425629 on whatsapp or the number which is chosen at the time of creating/refreshing auth code.')
        console.log('msg '+this.message)
        sendMessageMethod({msg: this.message}).then(result => {
        console.log('result' +result);
    }).catch(error => {
        this.error = error;
    });

    //on click send document
    sendDocToDocument().then(result => console.log('document' +result)).catch(error => console.log('doc error'+error));
    }
}