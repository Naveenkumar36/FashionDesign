package com.fashiondesign

class Account {
	
	String accountId
	
	String name 
	
	String phoneNo
	
	String email
	
	String area
	
	String street
	
	String district
	
	String state
	
	String postal
	
	Date dateCreated
	
	Date lastUpdated
	

    static constraints = {
		
		accountId blank:false, nullable: false, unique:true, maxSize: 128
		
		name blank:false, nullable: false, maxSize: 128
		
		phoneNo blank:false, nullable: false
		
		email  blank:false, nullable: false, email:true 
		
		area nullable:true
		
		street nullable:true
		
		district nullable:true
		
		state nullable:true
		
		postal nullable:true
		
    }
}
