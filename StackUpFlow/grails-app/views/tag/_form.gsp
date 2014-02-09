<%@ page import="stackupflow.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'followingUsers', 'error')} required">
	<label for="followingUsers">
		<g:message code="tag.followingUsers.label" default="Following Users" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="followingUsers" name="followingUsers.id" from="${stackupflow.User.list()}" optionKey="id" required="" value="${tagInstance?.followingUsers?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'taggedQuestions', 'error')} required">
	<label for="taggedQuestions">
		<g:message code="tag.taggedQuestions.label" default="Tagged Questions" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taggedQuestions" name="taggedQuestions.id" from="${stackupflow.Question.list()}" optionKey="id" required="" value="${tagInstance?.taggedQuestions?.id}" class="many-to-one"/>
</div>

