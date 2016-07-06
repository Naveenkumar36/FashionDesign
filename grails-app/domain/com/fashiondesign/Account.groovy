package com.fashiondesign

class Account {
	
	String accountId
	
	String name 
	
	String phoneNo
	
	String email
	
	boolean gender
	
	String area
	
	String street
	
	String district
	
	String state
	
	String postal
	
	int creationTime //for date entry in timestamp
	
	String validPassword

    static constraints = {
		
		accountId blank:false, nullable: false, unique:true, maxSize: 128
		
		name blank:false, nullable: false, maxSize: 128
		
		phoneNo blank:false, nullable: false
		
		email  blank:false, nullable: false
		
		gender  nullable: false
		
		validPassword blank:false, nullable: false, maxSize: 32
		
		area nullable:true
		
		street nullable:true
		
		district nullable:true
		
		state nullable:true
		
		postal nullable:true
		
    }
}
