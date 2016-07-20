package com.fashiondesign

import grails.transaction.Transactional

@Transactional
class LoginService {

    public User authentication(Map<String,String> inputMap){
		if((validateUserId(inputMap.get("userId")) && validatePassword(inputMap.get("password")))){
			throw new CustomException("UserId and Password should not be empty")
		}
		if(validateUserId(inputMap.get("userId"))){
			throw new CustomException("UserId Should not be empty")
		}
		if(validatePassword(inputMap.get("password"))){
			throw new CustomException("password Should not be empty")
		}
		User userInstance = User.findByEmailIdAndPassword(inputMap.get("userId"),inputMap.get("password"))
		if(userInstance){
			return userInstance
		}else{
			return null
		}
	}

	/**
	 * This is for validating userId
	 * @param userId
	 * @return boolean
	 */
	public boolean validateUserId(String userId){
		if(userId == null || userId.trim().equals("")){
			return true;
		}
		return false
	}


	/**
	 * This is for validating user password
	 * @param password
	 * @return boolean
	 */
	public boolean validatePassword(String password){
		if(password == null || password.trim().equals("")){
			return true;
		}
		return false
	}
}
