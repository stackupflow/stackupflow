<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo" role="banner">
			<a href="/StackUpFlow"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a>
			<a href="/StackUpFlow/login/auth" style="float: right;">login</a>
			<a href="/StackUpFlow/logout" style="float: right;">logout</a>
			<!-- language selector -->
			<!-- <langs:selector langs="es, en, en_US, pt_BR, pt, pt_pt, fr_FR" default="fr_FR" /> -->
		</div>
		
		<div class="nav" role="navigation">
			<ul>
				<li class="Question"  style="float: right;"><g:link controller="Unanswered"><g:message code="home.actionNav.unanswered" /></g:link></li>
				<li class="Badge"  style="float: right;"><g:link controller="Badge"><g:message code="home.actionNav.badges"/></g:link></li>
				<li class="User"  style="float: right;"><g:link controller="User"><g:message code="home.actionNav.users"/></g:link></li>
				<li class="Tag"  style="float: right;"><g:link controller="Tag"><g:message code="home.actionNav.tags"/></g:link></li>
				<li class="Question"  style="float: right;"><g:link controller="Question"><g:message code="home.actionNav.questions"/></g:link></li>
			</ul>
		</div>
		
		<div style="margin-top: 1em; margin-left: 3em;">
			<g:form action="search" >
				<g:textField name="search" value="${searchText }"/><g:submitButton name="create" value="search" />
			</g:form>
			<label style="float: right; margin-right: 3em;"><g:link controller="Question" action="create"><g:message code="home.actionNav.askQuestion"/></g:link></label>
		</div>
		
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
