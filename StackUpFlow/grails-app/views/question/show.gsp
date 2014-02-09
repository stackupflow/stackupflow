
<%@ page import="stackupflow.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<ckeditor:resources/>
		<g:set var="entityName" value="${questionInstance.title}" />
		<title><g:message code="default.question.title" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.question.title" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div style="margin-right: 3em; margin-left: 3em; margin-top: 1em; margin-bottom: 1em;">
				<label style="width: 7%; text-align: center; margin-right: 1em; vertical-align: top;">${questionInstance.score}</label>
				<g:if test="${questionInstance?.content}">
				<label style="width: 90%;">${questionInstance.content}</label>
				</g:if>
				<div style="margin-top: 1em; margin-bottom: 2em;">
					<g:each var="t" in="${questionInstance.tags}">
						<label>${t.name}</label> 
					</g:each>
					<p style="float: right;"><label>${questionInstance.creationDate }</label>
					<label>${questionInstance.author.name }</label></p>
				</div>
			</div>
			
			<div style="margin-top: 1em; margin-left: 3em; margin-bottom: 2em;">
				<h3>${questionInstance.answers.size()} answer(s) :</h3>
				<g:each var="a" in="${questionInstance.answers.sort{it.creationDate}}">
					<hr style="width:97%; margin-bottom: 1em;">
					<label>${a.content}</label>
					<p style="float: right; margin-right: 3em; margin-bottom: 1em;">
						<label>${a.creationDate }</label>
						<label>${a.author.name }</label>
					</p>
				</g:each>
			</div>
			
			<div style="margin-right: 3em; margin-left: 3em; margin-top: 1em; margin-bottom: 1em;">
				<g:form action="save" controller="Answer" >
					<g:hiddenField name="question" value="${questionInstance?.id}" />
					<ckeditor:editor name="answer" width="100%" toolbar="Basic" resize_enabled="false"> </ckeditor:editor>
					<g:submitButton name="submitAnswer" value="Submit your answer" />
				</g:form>
			</div>
			
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
