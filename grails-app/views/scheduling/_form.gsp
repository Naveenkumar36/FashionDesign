<%@ page import="com.fashiondesign.Scheduling"%>


<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="phoneNo"> <g:message
			code="scheduling.phoneNo.label" default="Phone No" />

	</label>
	<div class="col-lg-6">
		<g:textField name="phoneNo" required="" maxlength="10"
			value="${schedulingInstance?.phoneNo}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="visitTiming"> <g:message
			code="scheduling.visitTiming.label" default="Visit Timing" />
	</label>
	<div class="col-lg-6">
		<div class="col-lg-3">
				<g:select name="fromDateHour" from="${0..23}" /><span >hr</span>
			</div>
			<div class="col-lg-3">
				<g:select name="fromDateMin" from="${0..59}" /><span>min</span>
			</div>
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="name"> <g:message
			code="scheduling.name.label" default="Name" />
	</label>
	<div class="col-lg-6">
		<g:textField name="name" required=""
			value="${schedulingInstance?.name}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<g:if test="${tailor.equals('tailor')}">
<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="descriptionDress"> <g:message
			code="scheduling.descriptionDress.label" default="Description Dress" />
	</label>
	<div class="col-lg-6">
		<g:textField name="descriptionDress"
			value="${schedulingInstance?.descriptionDress}" />
	</div>
	<div class="row"></div>
</div>
</g:if>

<g:if test="${beautician.equals('beautician')}">
<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="service"> <g:message
			code="scheduling.service.label" default="Service" />
	</label>
	<div class="col-lg-6">
		<g:textField name="service" value="${schedulingInstance?.service}" />
	</div>
	<div class="row"></div>
</div>
</g:if>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="street"> <g:message
			code="scheduling.street.label" default="Street" /> 
	</label>
	<div class="col-lg-6">
		<g:textField name="street" required=""
			value="${schedulingInstance?.street}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="area"> <g:message
			code="scheduling.area.label" default="Area" /> 
	</label>
	<div class="col-lg-6">
		<g:textField name="area" required=""
			value="${schedulingInstance?.area}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="district"> <g:message
			code="scheduling.district.label" default="District" />
	</label>
	<div class="col-lg-6">
		<g:textField name="district" required=""
			value="${schedulingInstance?.district}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="postal"> <g:message
			code="scheduling.postal.label" default="Postal" /> 
	</label>
	<div class="col-lg-6">
		<g:textField name="postal" required=""
			value="${schedulingInstance?.postal}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>

<div class="form-group">
	<div class="col-lg-2"></div>
	<label class="col-lg-3 control-label" for="state"> <g:message
			code="scheduling.state.label" default="State" /> 
	</label>
	<div class="col-lg-6">
		<g:textField name="state" required=""
			value="${schedulingInstance?.state}" />
		<span class="required-indicator" style="color: red">*</span>
	</div>
	<div class="row"></div>
</div>


