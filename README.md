# Send-Whatsapp-Messages-Through-Salesforce
Sending Whatsapp message through salesforce. 
I have used 3 scenarios using which we can send messages as follows :
  1. sending message using trigger. (When Opportunity stage changes it will send message to X number). 
  2. send custom message from LWC Component text box 
  3. send documents (currently working but will be imporving in future. currently it is sending document which is available to download directly from internet.)
  
HOW To Use A Specific Feature From this Repo.
  1. To use LWC Component to send custom message 
      1. use files "stagesAndWhatsappMessageIndicator.HTML" , "stagesAndWhatsappMessageIndicator.JS" , "stagesAndWhatsappMessageIndicator.xml" 
      2. use Class "getMetadataAndRecordData.cls" and Method used "sendWAMsg()" and "sendWAMsgHandler()".
      3. Points To Remember:
          1. Create your own app on developer.salesforce.com
          2. replace bearer/Auth token with which is already written in code.
          3. change number and document Link.
      
  2. To Send Document on click (Currently On LWC Send Button Click It is called but it can be changes with action button).
      1. In Repo i have used files "stagesAndWhatsappMessageIndicator.HTML" , "stagesAndWhatsappMessageIndicator.JS" , "stagesAndWhatsappMessageIndicator.xml" 
      2. used classes "getMetadataAndRecordData" Methods Used "sendWADocument()" and "sendWADocumentHandler()"
      3. Points To Remember:
          1. Create your own app on developer.salesforce.com
          2. replace bearer/Auth token with which is already written in code.
          3. change number and document Link.
         
  3. To Send Automatically message when opportunity stage is updated.
          1. In Repo i have used files "getMetadataAndRecordData.cls" Method "sendWAMsg(string msg)" and "sendWAMsghandler(string msg)"
          2. trigger file "sendWhatsAppMessagesWhenOppStageChanges.trigger"
          
   ALL THE ABOVE SPECIFIED FILES ARE AVAILABLE IN REPO. 
   THIS REPO IS OPEN TO ALL CONTRIBUTERS WHO WANT TO IMPROVE THIS IN TERMS OF UI OR FUNCTIONALITY ADDING FEATURES OR MAKING IT MORE EFFICIENT.

NOTE:-
  There are few limitations in whatsapp API
      1. First need to create account on https://developers.facebook.com/ and for free you only get 5 numbers on which you can test your system.
      2. Facebook by default creates temporary bearer token which expires after every 24 hours.
      3. To recieve message you need to send message to "From number" which you have chosen at the time of creating whatsapp app on developer.salesforce.com
      

