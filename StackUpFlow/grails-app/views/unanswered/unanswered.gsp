
<%@ page import="stackupflow.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li class="Question"  style="float: right;"><g:link controller="Question" action="unansweredList">Unanswered</g:link></li>
				<li class="Badge"  style="float: right;"><g:link controller="Badge">Badges</g:link></li>
				<li class="User"  style="float: right;"><g:link controller="User">Users</g:link></li>
				<li class="Tag"  style="float: right;"><g:link controller="Tag">Tags</g:link></li>
				<li class="Question"  style="float: right;"><g:link controller="Question">Questions</g:link></li>
			</ul>
		</div>
		
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-question" class="content scaffold-list" role="main">
			<div style="margin-top: 1em; margin-left: 3em;">
				<g:textField name="search" /><g:actionSubmit value="Search" />
				<label style="float: right; margin-right: 3em;"><g:link controller="Question" action="create">Ask Question</g:link></label>
			</div>
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table BORDER=1 RULES="rows" FRAME=BOX style="border-color: #48802c; margin-right: 3em;">
					<g:each in="${questionInstanceList}" status="i" var="q">
						<tr>
							<td style="text-align: center; vertical-align:middle; width: 10%;">
								<label>${q.score}</label><br>
								<label>votes</label>
							</td>
							<td style="text-align: center; vertical-align:middle; width: 10%;">
								<label>${q.answers.size()}</label>
								<br><label>answers</label>
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
