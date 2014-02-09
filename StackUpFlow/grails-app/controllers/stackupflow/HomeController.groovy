package stackupflow

class HomeController {
	
	def index() {
		redirect(action: "home", params: params)
	}

    def home() { 
		def u = Question.list().sort{ it.score }.reverse()
		[questionList: u]
	}
	
	def search() {
		def l = Question.findAllByTitleLike("%"+params.search.replace(" ", "%")+"%")
		[questionList: l]
	}
}
