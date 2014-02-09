package stackupflow

class HomeController {

    def home() { 
		def u = Question.list().sort{ it.score }.reverse()
		['questionList': u]
	}
}
