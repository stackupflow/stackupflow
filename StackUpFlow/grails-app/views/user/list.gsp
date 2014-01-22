
<%@ page import="stackupflow.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="birthDate" title="${message(code: 'user.birthDate.label', default: 'Birth Date')}" />
					
						<g:sortableColumn property="creationDate" title="${message(code: 'user.creationDate.label', default: 'Creation Date')}" />
					
						<g:sortableColumn property="lastVisit" title="${message(code: 'user.lastVisit.label', default: 'Last Visit')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'user.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "birthDate")}</g:link></td>
					
						<td><g:formatDate date="${userInstance.creationDate}" /></td>
					
						<td><g:formatDate date="${userInstance.lastVisit}" /></td>
					
						<td>${fieldValue(bean: userInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
