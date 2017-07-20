accountCancel.tgr is an Apex Trigger that cancels a customer in our Salesforce Instance by changing all fields in the Account and the Opportunites neccessary for a customer to no longer be counted in reports run for current customers. 

HOW IT WORKS:
1. "Cancelled" field is checked in a custoner Return object. 
2. Script changes "Type" field in customer's Account to "Former Customer"
3. Script changes "Cancelled" field of all customer's "Closed Won" Opportunties to True

Customer is effectively cancelled in our Salesforce Instance


DOES IT WORK:
Yes. It has been running in our production Salesforce Instance for several months. ss

DISCLAIMER:
SCRIPTS ARE INTENDED TO DEMONSTRATE MY CODING SKILLS IN SALESFORCE AND APEX. 


LICENSE: 
NO EXPLICIT OR IMPLICIT PERMISSION IS GIVEN ANY PERSON, GROUP, OR ORGANIZATION TO USE ANY OF THIS MATERIAL FOR ANY BUSINESS OR PERSONAL REASON UNRELATED TO MYSELF WITHOUT WRITTEN PERMISSION. 
