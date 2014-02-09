<%@ page import="stackupflow.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'title', 'error')} " >
	<label for="title" style="float: left; width: 8%;">
		<g:message code="question.title.label" default="Title" />
	</label>
	<g:textField name="title" value="${questionInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'content', 'error')} ">
	<ckeditor:editor name="content" width="100%" toolbar="Basic" resize_enabled="false">${questionInstance?.content}</ckeditor:editor>
</div>

