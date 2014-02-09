
<%@ page import="stackupflow.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-question" class="content scaffold-list" role="main">
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
		</g:if>
		<table BORDER=1 RULES="rows" FRAME=BOX style="border-color: #48802c; margin-right: 3em;">
				<g:each in="${questionInstanceList}" status="i" var="q">
					<tr>
						<td style="text-align: center; vertical-align:middle; width: 10%;">
							<label>${q.score}</label><br>
							<label><g:message code="home.question.nbVotes"/></label>
						</td>
						<td style="text-align: center; vertical-align:middle; width: 10%;">
							<label>${q.answers.size()}</label>
							<br><label><g:message code="home.question.nbAnswers"/></label>
						</td>
						<td style="width: 80%;">
							<h1><g:link controller="Question" action="show" id="${q.id }">${q.title }</g:link></h1>

							<p style="float: right;"><label>${q.creationDate }</label>
							<label>${q.author.name }</label></p>
						</td>
					</tr>
				</g:each>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
