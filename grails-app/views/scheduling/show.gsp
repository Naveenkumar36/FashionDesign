
<%@ page import="com.fashiondesign.Scheduling" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scheduling.label', default: 'Scheduling')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-scheduling" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-scheduling" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list scheduling">
			
				<g:if test="${schedulingInstance?.phoneNo}">
				<li class="fieldcontain">
					<span id="phoneNo-label" class="property-label"><g:message code="scheduling.phoneNo.label" default="Phone No" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo-label"><g:fieldValue bean="${schedulingInstance}" field="phoneNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.visitTiming}">
				<li class="fieldcontain">
					<span id="visitTiming-label" class="property-label"><g:message code="scheduling.visitTiming.label" default="Visit Timing" /></span>
					
						<span class="property-value" aria-labelledby="visitTiming-label"><g:fieldValue bean="${schedulingInstance}" field="visitTiming"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="scheduling.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${schedulingInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.descriptionDress}">
				<li class="fieldcontain">
					<span id="descriptionDress-label" class="property-label"><g:message code="scheduling.descriptionDress.label" default="Description Dress" /></span>
					
						<span class="property-value" aria-labelledby="descriptionDress-label"><g:fieldValue bean="${schedulingInstance}" field="descriptionDress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.service}">
				<li class="fieldcontain">
					<span id="service-label" class="property-label"><g:message code="scheduling.service.label" default="Service" /></span>
					
						<span class="property-value" aria-labelledby="service-label"><g:fieldValue bean="${schedulingInstance}" field="service"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="scheduling.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${schedulingInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="scheduling.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${schedulingInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.postal}">
				<li class="fieldcontain">
					<span id="postal-label" class="property-label"><g:message code="scheduling.postal.label" default="Postal" /></span>
					
						<span class="property-value" aria-labelledby="postal-label"><g:fieldValue bean="${schedulingInstance}" field="postal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="scheduling.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${schedulingInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${schedulingInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="scheduling.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${schedulingInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:schedulingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${schedulingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
