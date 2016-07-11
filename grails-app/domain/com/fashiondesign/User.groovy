package com.fashiondesign

import java.util.Date;

import org.apache.tools.ant.util.LayoutPreservingProperties.Blank;

class User {
	String firstName;
	
	String lastName;
	
	String userId;
	
	String password;
	
	String phone_No;
	
	String emailId;
	
	String role;
	
	Account accountId
	
	Date dateCreated
	
	Date lastUpdated
	
    
	static constraints = {
		firstName(nullable:false,blank:false)
	
		lastName(nullable:false,blank:false)
		
		userId (nullable:false,blank:false)
		
		password(nullable:false,blank:false)
		
		phone_No (nullable:false,blank:false,unique:true)
		
		emailId(nullable:false,email:true,unique:true)
		
		role(nullable:false,blank:false)
		
		accountId(nullable:false,blank:false)
    }
}
