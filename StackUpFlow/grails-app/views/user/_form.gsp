<%@ page import="stackupflow.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="user.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${userInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'creationDate', 'error')} required">
	<label for="creationDate">
		<g:message code="user.creationDate.label" default="Creation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creationDate" precision="day"  value="${userInstance?.creationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastVisit', 'error')} required">
	<label for="lastVisit">
		<g:message code="user.lastVisit.label" default="Last Visit" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastVisit" precision="day"  value="${userInstance?.lastVisit}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="user.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${userInstance?.mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'webSite', 'error')} ">
	<label for="webSite">
		<g:message code="user.webSite.label" default="Web Site" />
		
	</label>
	<g:textField name="webSite" value="${userInstance?.webSite}"/>
</div>

