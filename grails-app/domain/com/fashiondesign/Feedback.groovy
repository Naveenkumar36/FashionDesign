package com.fashiondesign

class Feedback {
	
	String accountId
	
	int rating
	
	String feedback
	
	int creationTime
	 

    static constraints = {
		rating range:1..10
		
		feedback blank:true, nullable:true, maxSize:250
    }
}
