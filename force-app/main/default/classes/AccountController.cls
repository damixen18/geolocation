public with sharing class AccountController {
 @auraEnabled
    public static List<Account> findAll() {
    return [SELECT Id, Name, Location__Latitude__s, Location__longitude__s 
    FROM Account
    WHERE Location__Latitude__s != NULL AND Location__Longitude__s != NULL 
    LIMIT 50 ];

    }
}
