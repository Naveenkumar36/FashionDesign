<%@ page import="com.fashiondesign.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountId', 'error')} required">
	<label for="accountId">
		<g:message code="account.accountId.label" default="Account Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="accountId" maxlength="128" required="" value="${accountInstance?.accountId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="128" required="" value="${accountInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'phoneNo', 'error')} required">
	<label for="phoneNo">
		<g:message code="account.phoneNo.label" default="Phone No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo" required="" value="${accountInstance?.phoneNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="account.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${accountInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="account.gender.label" default="Gender" />
		
	</label>
	<g:checkBox name="gender" value="${accountInstance?.gender}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'validPassword', 'error')} required">
	<label for="validPassword">
		<g:message code="account.validPassword.label" default="Valid Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="validPassword" maxlength="32" required="" value="${accountInstance?.validPassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="account.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${accountInstance?.address}"/>

</div>

