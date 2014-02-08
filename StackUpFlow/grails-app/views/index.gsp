<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>StackUpFlow</title>
		<style type="text/css">
			label{
				float:left;
				width:65px
			}
		</style>
	</head>
	<body>
		<g:form action="login" controller="user" style="padding-left:200px">
			<div style="width:220px" >
				<label>Name:</label> <input type="text" name="username"/>
				<label>Password:</label> <input type="password" name="password"/>
				<label>&nbsp;</label><input type="submit" value="login"/>
			</div>
		</g:form>
		
	</body>
</html>