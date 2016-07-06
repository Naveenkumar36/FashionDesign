<%@ page import="com.fashiondesign.Scheduling" %>



<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'phoneNo', 'error')} required">
	<label for="phoneNo">
		<g:message code="scheduling.phoneNo.label" default="Phone No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNo" required="" value="${schedulingInstance?.phoneNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'visitTiming', 'error')} required">
	<label for="visitTiming">
		<g:message code="scheduling.visitTiming.label" default="Visit Timing" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="visitTiming" type="number" value="${schedulingInstance.visitTiming}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="scheduling.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${schedulingInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'descriptionDress', 'error')} ">
	<label for="descriptionDress">
		<g:message code="scheduling.descriptionDress.label" default="Description Dress" />
		
	</label>
	<g:textField name="descriptionDress" value="${schedulingInstance?.descriptionDress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'service', 'error')} ">
	<label for="service">
		<g:message code="scheduling.service.label" default="Service" />
		
	</label>
	<g:textField name="service" value="${schedulingInstance?.service}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="scheduling.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${schedulingInstance?.area}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="scheduling.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${schedulingInstance?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'postal', 'error')} required">
	<label for="postal">
		<g:message code="scheduling.postal.label" default="Postal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postal" required="" value="${schedulingInstance?.postal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="scheduling.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${schedulingInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schedulingInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="scheduling.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${schedulingInstance?.street}"/>

</div>

