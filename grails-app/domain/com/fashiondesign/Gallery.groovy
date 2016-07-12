package com.fashiondesign

import java.util.Date;

import com.google.javascript.jscomp.InlineFunctions.Inline;

class Gallery {

	byte[] item
	
	String type
	
	String description
	
	Date dateCreated
	
	Date lastUpdated
	
    static constraints = {
    
		item nullable:false,maxSize:1000000
	
		type nullable:false,blank:false
		
		description nullable:true,maxSize:250
		
	}
}
