package com.fashiondesign;

public class CustomException extends Throwable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public CustomException(String errorMsg){
		   super(errorMsg);
	   }

}
