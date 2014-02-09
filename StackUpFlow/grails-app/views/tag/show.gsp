
<%@ page import="stackupflow.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-tag" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tag">
			
				<g:if test="${tagInstance?.followingUsers}">
				<li class="fieldcontain">
					<span id="followingUsers-label" class="property-label"><g:message code="tag.followingUsers.label" default="Following Users" /></span>
					
						<span class="property-value" aria-labelledby="followingUsers-label"><g:link controller="user" action="show" id="${tagInstance?.followingUsers?.id}">${tagInstance?.followingUsers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tag.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tagInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.taggedQuestions}">
				<li class="fieldcontain">
					<span id="taggedQuestions-label" class="property-label"><g:message code="tag.taggedQuestions.label" default="Tagged Questions" /></span>
					
						<span class="property-value" aria-labelledby="taggedQuestions-label"><g:link controller="question" action="show" id="${tagInstance?.taggedQuestions?.id}">${tagInstance?.taggedQuestions?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tagInstance?.id}" />
					<g:link class="edit" action="edit" id="${tagInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
