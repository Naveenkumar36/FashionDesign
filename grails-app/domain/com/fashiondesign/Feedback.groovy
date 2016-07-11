package com.fashiondesign

import java.util.Date;

class Feedback {
	
	User userId
	
	String customerName
	
	int rating
	
	String feedback
	
	Date dateCreated
	
	Date lastUpdated
	

    static constraints = {
		rating range:1..10
		
		userId nullable:false
		
		customerName nullable:false
		
		feedback blank:true, nullable:true, maxSize:250
    }
}
