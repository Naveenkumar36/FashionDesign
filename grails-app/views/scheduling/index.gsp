
<%@ page import="com.fashiondesign.Scheduling" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scheduling.label', default: 'Scheduling')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-scheduling" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-scheduling" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="phoneNo" title="${message(code: 'scheduling.phoneNo.label', default: 'Phone No')}" />
					
						<g:sortableColumn property="visitTiming" title="${message(code: 'scheduling.visitTiming.label', default: 'Visit Timing')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'scheduling.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="descriptionDress" title="${message(code: 'scheduling.descriptionDress.label', default: 'Description Dress')}" />
					
						<g:sortableColumn property="service" title="${message(code: 'scheduling.service.label', default: 'Service')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'scheduling.area.label', default: 'Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${schedulingInstanceList}" status="i" var="schedulingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${schedulingInstance.id}">${fieldValue(bean: schedulingInstance, field: "phoneNo")}</g:link></td>
					
						<td>${fieldValue(bean: schedulingInstance, field: "visitTiming")}</td>
					
						<td>${fieldValue(bean: schedulingInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: schedulingInstance, field: "descriptionDress")}</td>
					
						<td>${fieldValue(bean: schedulingInstance, field: "service")}</td>
					
						<td>${fieldValue(bean: schedulingInstance, field: "area")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${schedulingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
