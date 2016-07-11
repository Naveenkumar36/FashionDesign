package com.fashiondesign

import java.util.Date;

class Scheduling {
	
	String phoneNo
	
	int visitTiming
	
	String name
	
	String street
	
	String area
	
	String district
	
	String state
	
	String postal
	
	String descriptionDress
	
	String service
	
	String type
	
	Date dateCreated
	
	Date lastUpdated

	static constraints = {
		
		phoneNo blank:false, nullable:false
		
		visitTiming unique:false
		
		name blank:false, nullable:false
		
		descriptionDress nullable:true
		
		service nullable:true
		
	}
   
}
