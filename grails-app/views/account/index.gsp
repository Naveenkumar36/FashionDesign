
<%@ page import="com.fashiondesign.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-account" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="accountId" title="${message(code: 'account.accountId.label', default: 'Account Id')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phoneNo" title="${message(code: 'account.phoneNo.label', default: 'Phone No')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'account.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'account.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="validPassword" title="${message(code: 'account.validPassword.label', default: 'Valid Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "accountId")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "phoneNo")}</td>
					
						<td>${fieldValue(bean: accountInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${accountInstance.gender}" /></td>
					
						<td>${fieldValue(bean: accountInstance, field: "validPassword")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${accountInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>