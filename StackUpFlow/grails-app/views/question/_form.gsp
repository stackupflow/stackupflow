<%@ page import="stackupflow.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="question.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${stackupflow.User.list()}" optionKey="id" required="" value="${questionInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="question.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${questionInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="question.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${questionInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'lastEditDate', 'error')} required">
	<label for="lastEditDate">
		<g:message code="question.lastEditDate.label" default="Last Edit Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastEditDate" precision="day"  value="${questionInstance?.lastEditDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="question.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="score" type="number" value="${questionInstance.score}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="question.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${questionInstance?.title}"/>
</div>

