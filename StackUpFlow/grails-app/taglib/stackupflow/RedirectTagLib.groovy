package stackupflow

class RedirectTagLib {
	def redirectMainPage = {
		response.sendRedirect("${request.contextPath}/home")
	}
}
