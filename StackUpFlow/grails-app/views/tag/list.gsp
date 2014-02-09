
<%@ page import="stackupflow.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-tag" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="tag.followingUsers.label" default="Following Users" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'tag.name.label', default: 'Name')}" />
					
						<th><g:message code="tag.taggedQuestions.label" default="Tagged Questions" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tagInstanceList}" status="i" var="tagInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "followingUsers")}</g:link></td>
					
						<td>${fieldValue(bean: tagInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: tagInstance, field: "taggedQuestions")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tagInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
