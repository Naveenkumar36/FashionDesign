package com.fashiondesign

class User {
	String firstName;
	String lastName;
	String userId;
	String password;
	String phone_No;
	String emailId;
	String role;
    static constraints = {
		firstName(nullable:false)
		lastName(nullable:false)
		userId (nullable:false)
		password(nullable:false)
		phone_No (nullable:false)
		emailId(nullable:false,email:true)
		role(nullable:false)
    }
}
