public with sharing class getMetadataAndRecordData {

@AuraEnabled
public static string sendWAMsg(string msg){
    return getMetadataAndRecordData.sendWAMsgHandler(msg);
}

public static string sendWAMsgHandler(String messageBody){
    Http h = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://graph.facebook.com/v14.0/108364148712339/messages');
    req.setHeader('Content-Type', 'application/json');
    req.setMethod('POST');
    
    String apiKey='EAAVAEkJKZCcQBAIrDeHmOCbNmYtnm7Wf890D3zZB7CIKSDzpg0jBYBpgsoNlDp6wCXkJCw55cgGa1gpkTEqUpNszFyZCs8Q9Yp7566DEZAXzp68HxZA2obEmvZCuOFUcs7xIWljtTJ2KvfYA1BFLOX68OJdbkx5A6YbWTwaOT7VQZAn5QSd5dBrwSvAPelx00ETO6rZAVb2h4AZDZD';
    String body='{"messaging_product": "whatsapp","to": "919799999999","type": "text","text": {"body": "'+messageBody+'"}}';
    
    req.setHeader('Authorization', 'Bearer '+apiKey);
    //req.setHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
    req.setBody(body);
    HttpResponse response= new HttpResponse();
    response=h.send(req);
    system.debug('response>>'+response);
    
    system.debug('response>>'+response.getBody());
    return string.valueof(response);
}

@AuraEnabled
public static string sendWADocument(string msg){
    return getMetadataAndRecordData.sendWADocumenthandler();
}
public static string sendWADocumenthandler(){
    Http h = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://graph.facebook.com/v14.0/108364148712339/messages');
    req.setHeader('Content-Type', 'application/json');
    req.setMethod('POST');
    
    String apiKey='EAAVAEkJKZCcQBAIrDeHmOCbNmYtnm7Wf890D3zZB7CIKSDzpg0jBYBpgsoNlDp6wCXkJCw55cgGa1gpkTEqUpNszFyZCs8Q9Yp7566DEZAXzp68HxZA2obEmvZCuOFUcs7xIWljtTJ2KvfYA1BFLOX68OJdbkx5A6YbWTwaOT7VQZAn5QSd5dBrwSvAPelx00ETO6rZAVb2h4AZDZD';
    String body='{"messaging_product": "whatsapp","to": "919799280040","type": "Document","document": {"link": "https://www.annualreports.com/HostedData/AnnualReports/PDF/NYSE_CRM_2022.pdf", "caption": "your-document-caption"}}';
    
    req.setHeader('Authorization', 'Bearer '+apiKey);
    //req.setHeader('Content-Type', 'multipart/form-data; boundary=' + boundary);
    req.setBody(body);
    HttpResponse response= new HttpResponse();
    response=h.send(req);
    system.debug('response>>'+response);
    
    system.debug('response>>'+response.getBody());
    return string.valueof(response);
}

}
