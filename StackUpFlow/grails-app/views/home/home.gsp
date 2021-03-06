<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>StackUpFlow</title>
		<style type="text/css" media="screen">
			

		
			#page-body {
				margin: 0em 0em 0em 3em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}
				
				#page-body table {
					margin-top: 0;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="page-body" role="main">
			<div style="margin-right: 3em;">
				<h2><g:message code="home.topQuestions"/></h2>
				<table BORDER=1 RULES="rows" FRAME=BOX style="border-color: #48802c;">
					<g:each var="q" in="${questionList}">
						<tr>
							<td style="text-align: center; vertical-align:middle; width: 10%;">
								<label>${q.score}</label><br>
								<label><g:message code="home.question.nbVotes"/></label>
							</td>
							<td style="text-align: center; vertical-align:middle; width: 10%;">
								<label>${q.answers.size()}</label>
								<br><label><g:message code="home.question.nbAnswers"/></label>
							</td>
							<td style="width: 80%;">
								<h1><g:link controller="Question" action="show" id="${q.id }">${q.title }</g:link></h1>

								<p style="float: right;"><label>${q.creationDate }</label>
								<label>${q.author.name }</label></p>
							</td>
						</tr>
					</g:each>
				</table>
			</div>
		</div>
	</body>
</html>