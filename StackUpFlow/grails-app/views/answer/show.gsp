
<%@ page import="stackupflow.Answer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-answer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-answer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list answer">
			
				<g:if test="${answerInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="answer.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${answerInstance?.author?.id}">${answerInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="answer.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${answerInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.creationDate}">
				<li class="fieldcontain">
					<span id="creationDate-label" class="property-label"><g:message code="answer.creationDate.label" default="Creation Date" /></span>
					
						<span class="property-value" aria-labelledby="creationDate-label"><g:formatDate date="${answerInstance?.creationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.isAccepted}">
				<li class="fieldcontain">
					<span id="isAccepted-label" class="property-label"><g:message code="answer.isAccepted.label" default="Is Accepted" /></span>
					
						<span class="property-value" aria-labelledby="isAccepted-label"><g:formatBoolean boolean="${answerInstance?.isAccepted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.lastEditDate}">
				<li class="fieldcontain">
					<span id="lastEditDate-label" class="property-label"><g:message code="answer.lastEditDate.label" default="Last Edit Date" /></span>
					
						<span class="property-value" aria-labelledby="lastEditDate-label"><g:formatDate date="${answerInstance?.lastEditDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="answer.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:link controller="question" action="show" id="${answerInstance?.question?.id}">${answerInstance?.question?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="answer.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${answerInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${answerInstance?.id}" />
					<g:link class="edit" action="edit" id="${answerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
