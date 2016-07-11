package com.fashiondesign

import java.util.Date;

import com.google.javascript.jscomp.InlineFunctions.Inline;

class Gallery {

	byte[] item
	
	String type
	
	Date dateCreated
	
	Date lastUpdated
	
    static constraints = {
    
		item nullable:false,maxSize:100000
	
		type nullable:false,blank:false
	}
}
