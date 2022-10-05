trigger sendWhatsAppMessagesWhenOppStageChanges on opportunity (after insert, after update) {
    if(trigger.isUpdate && trigger.isAfter){
        for(opportunity opp: trigger.new){
            if(opp.stageName != trigger.oldMap.get(opp.Id).stageName){
                getMetadataAndRecordData.sendWAMsg(opp.stageName);
            }
        }
    }
}