<%@ page import="stackupflow.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="answer.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${stackupflow.User.list()}" optionKey="id" required="" value="${answerInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="answer.content.label" default="Content" />
		
	</label>
	<g:textField name="content" value="${answerInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="answer.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${answerInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'isAccepted', 'error')} ">
	<label for="isAccepted">
		<g:message code="answer.isAccepted.label" default="Is Accepted" />
		
	</label>
	<g:checkBox name="isAccepted" value="${answerInstance?.isAccepted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'lastEditDate', 'error')} required">
	<label for="lastEditDate">
		<g:message code="answer.lastEditDate.label" default="Last Edit Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastEditDate" precision="day"  value="${answerInstance?.lastEditDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answer.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${stackupflow.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="answer.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="score" type="number" value="${answerInstance.score}" required=""/>
</div>

