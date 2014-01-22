
<%@ page import="stackupflow.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="question.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${questionInstance?.author?.id}">${questionInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="question.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${questionInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="question.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${questionInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.lastEditDate}">
				<li class="fieldcontain">
					<span id="lastEditDate-label" class="property-label"><g:message code="question.lastEditDate.label" default="Last Edit Date" /></span>
					
						<span class="property-value" aria-labelledby="lastEditDate-label"><g:formatDate date="${questionInstance?.lastEditDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="question.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${questionInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="question.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${questionInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questionInstance?.id}" />
					<g:link class="edit" action="edit" id="${questionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
