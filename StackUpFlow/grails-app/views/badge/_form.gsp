<%@ page import="stackupflow.Badge" %>



<div class="fieldcontain ${hasErrors(bean: badgeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="badge.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${badgeInstance?.name}"/>
</div>

