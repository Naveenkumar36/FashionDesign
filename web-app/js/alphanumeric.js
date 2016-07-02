/**
 * This java script for validating text box Text box only accept character, if
 * enter any special character or numeric value it will display validation
 * message error and error1 id is used for displaying error message when enter
 * character in text box IsAlphaNumeric method will call and error message will
 * display on respected text box id
 * 
 */
var specialKeys = new Array();
specialKeys.push(8); // Backspace
specialKeys.push(9); // Tab
specialKeys.push(46); // Delete
specialKeys.push(36); // Home
specialKeys.push(35); // End
specialKeys.push(37); // Left
specialKeys.push(39); // Right
var test = 0; // for validating consecutive dot or space
var preLocVal = 0; // for validating consecutive dot or space



/**
 * This is for validating Name text box for (Item,Country,State,City),This
 * function will execute when key press event occur. text box accept
 * alphabet,space and period. first char should not be special char and numeric.
 * single space or single period accepted between two word. not end with special
 * character. 'nameText' is id of the Name text box and 'error' id for
 * displaying error message
 */
function IsAlphaNumeric(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('nameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32 || test == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}

function IsAlphaNumeric3(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('contactNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32 || test == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error3").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This is for validating Short Name text box for (Item,Country,State,City) this
 * function will execute when key press event occurs. text box accept alphabet.
 * 'error1' id for displaying error message.
 */
function IsAlphaNumeric1(e) {
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	var ret = ((keyCode >= 65 && keyCode <= 90)
			|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
			.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#nameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";

	if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
		{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
	}
								return false;
							}
						}
					});
});

/**
 * This is for validating Short Name text box for (Item,Country,State,City) this
 * function will execute when blur event occurs. text box accept alphabet.
 * 'error1' id for displaying error message.
 */
$(function() {
	$("#shortNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value.match(/^[a-zA-Z]*$/)) {
								ret = true;
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								$(this).val('');
								return false;
							}
						}
					});
});
/**
 * This is for location text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function readerShortNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('readerShortNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((preLocVal == 32 || preLocVal == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57)|| (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		preLocVal = keyCode

	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#readerShortNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([0-9]?[\s.]?)[a-zA-Z0-9]*$/)) {
								ret = true;
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});


/**
 * This is for location text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function LocationNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('locNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((preLocVal == 32 || preLocVal == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57)|| (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		preLocVal = keyCode

	}
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}


/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#locNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([0-9]?[\s.]?)[a-zA-Z0-9]*$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});





/**
 * This is for location text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function LocationShortNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('locationShortNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((preLocVal == 32 || preLocVal == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57)|| (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		preLocVal = keyCode

	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}


/**
 * This function for validating shortName Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#locationShortNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([0-9]?[\s.]?)[a-zA-Z0-9]*$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});

/**
 * This is for Group Name text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function groupNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('groupId').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((preLocVal == 32 || preLocVal == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57)|| (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		preLocVal = keyCode

	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}


/**
 * This function for validating Group Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#groupId")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([0-9]?[\s.]?)[a-zA-Z0-9]*$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});
/**
 * This is for location text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function DepartmentNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('depNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} /*else if ((preLocVal == 32 || preLocVal == 38) && (keyCode == 32 || keyCode == 38)) {
		ret = false;
	}*/ else {
		ret = ((keyCode == 32) || (keyCode == 38)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		//preLocVal = keyCode

	}
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}
/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#depNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s&]?)[a-zA-Z]*?([\s&]?)[a-zA-Z]*?([\s&]?)[a-zA-Z]*?([\s&]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});


/**
 * This is for validating Name text box for (Item,Country,State,City),This
 * function will execute when key press event occur. text box accept
 * alphabet,space and period. first char should not be special char and numeric.
 * single space or single period accepted between two word. not end with special
 * character. 'nameText' is id of the Name text box and 'error' id for
 * displaying error message
 */
function uomNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('uomNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32) && (keyCode == 32 )) {
		ret = false;
	} else {
		ret = ((keyCode == 32)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}
/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#uomNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";

	if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
		{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
	}
								return false;
							}
						}
					});
});

/**
 * This is for validating Short Name text box for uom this
 * function will execute when key press event occurs. text box accept alphabet.
 * 'error1' id for displaying error message.
 */
function uomShortNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('uomShortNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32) && (keyCode == 32 )) {
		ret = false;
	} else {
		ret = ((keyCode == 32)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#uomShortNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]*?([\s]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";

	if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
		{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
	}
								return false;
							}
						}
					});
});
/**
 * This is for validating Name text box for (Item,Country,State,City),This
 * function will execute when key press event occur. text box accept
 * alphabet,space and period. first char should not be special char and numeric.
 * single space or single period accepted between two word. not end with special
 * character. 'nameText' is id of the Name text box and 'error' id for
 * displaying error message
 */
function firstNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('firstNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32 || test == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#firstNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error").style.display = ret ? "none"
										: "inline";

	if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
		{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
	}
								return false;
							}
						}
					});
});
/**
 * This is for validating Name text box for (Item,Country,State,City),This
 * function will execute when key press event occur. text box accept
 * alphabet,space and period. first char should not be special char and numeric.
 * single space or single period accepted between two word. not end with special
 * character. 'nameText' is id of the Name text box and 'error' id for
 * displaying error message
 */
function lastNameValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('lastNameText').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} else if ((test == 32 || test == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} else {
		ret = ((keyCode == 32) || (keyCode == 46)
				|| (keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		test = keyCode

	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}

/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#lastNameText")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]*?([\s.]?)[a-zA-Z]?$/)) {
								ret = true;
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";

	if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
		{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
	}
								return false;
							}
						}
					});
});




/**
 * This function for validating Name Text box, This will be execute when blur
 * event occur. text box accept alphabet,space and period. first char should not
 * be special char and numeric. single space or single period accepted between
 * two word. value should not end with special character. 'nameText' is id of
 * Name text box and 'error' id for displaying error message
 */
$(function() {
	$("#userIdVal")
			.blur(
					function() {
						var ret
						if ($(this).length > 0 && !($(this).val()=='')) {
							if (this.value
									.match(/^[a-zA-Z]+([0-9]?)[a-zA-Z0-9]*$/)) {
								ret = true;
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								return true;
							} else {
								var ret = false
								document.getElementById("error1").style.display = ret ? "none"
										: "inline";
								if(!$(this).val().substr($(this).val().length-1,($(this).val().length).match(/[a-zA-Z]/)))
								{
								var textValue = $(this).val().substr(0,
										($(this).val().length - 1))
								$(this).val(textValue);
								}
								return false;
							}
						}
					});
});

/**
 * This is for location text box validation text box accept alphanumeric,space
 * and period first char should not be special char and numeric single space or
 * single period accepted between two word not end with special character
 */

function userIdValidation(e) {
	var ret
	var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
	if (document.getElementById('userIdVal').value.length == 0) {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
	} /*else if ((preLocVal == 32 || keyCode == 46) && (keyCode == 32 || keyCode == 46)) {
		ret = false;
	} */else {
		ret = ((keyCode >= 65 && keyCode <= 90)
				|| (keyCode >= 97 && keyCode <= 122) || (keyCode >= 48 && keyCode <= 57)|| (specialKeys
				.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
		preLocVal = keyCode
	}
	document.getElementById("error1").style.display = ret ? "none" : "inline";
	return ret;
}
