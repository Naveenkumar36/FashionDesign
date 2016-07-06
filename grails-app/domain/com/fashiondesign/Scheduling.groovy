package com.fashiondesign

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
	
	int creationTime // for date entry in timestamp

	static constraints = {
		
		phoneNo blank:false, nullable:false
		
		visitTiming unique:false
		
		name blank:false, nullable:false
		
		descriptionDress nullable:true
		
		service nullable:true
		
	}
   
}
