/**
 * @description       : Trigger on Twilio_Message__c
 * @author            : Suraj Gupta
 * @group             : 
 * @last modified on  : 02-24-2022
 * @last modified by  : Suraj Gupta
 * Modifications Log
 * Ver   Date         Author        Modification
 * 1.0   02-24-2022   Suraj Gupta   Initial Version
**/
trigger TwilioMessageTrigger on Twilio_Message__c (before insert, after insert) {

	/* 
		Using Trigger context variable (isAfter)
	*/
	if (Trigger.isAfter){
		
		//calling helper class to send SMS
		TwilioWorkflowSMSHelper.messageProcessor(Trigger.new);
	} 
}