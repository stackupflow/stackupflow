<%@ page import="stackupflow.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="author">
		<g:message code="default.user.role" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role" from="${stackupflow.Role.list()}" required="" value="${role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="user.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${userInstance?.mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'webSite', 'error')} ">
	<label for="webSite">
		<g:message code="user.webSite.label" default="Web Site" />
		
	</label>
	<g:textField name="webSite" value="${userInstance?.webSite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="user.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${userInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>

