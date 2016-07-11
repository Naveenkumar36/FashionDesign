package com.fashiondesign

import java.util.Date;

class Notification {
	
	String accountId
	
	String typeMessage // tailor or beautician
	
	Date dateCreated
	
	Date lastUpdated
	
	String notificationType // weather sms or email notification
	
    static constraints = {
		
    }
}
