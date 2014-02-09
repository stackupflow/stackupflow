package stackupflow

class UnansweredController {

    def index() {
        redirect(action: "unanswered", params: params)
    }

   def unanswered(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		def Collection unansList = new LinkedList<Question>()
		for (q in Question.all) {
			if(q.answers.size() == 0)
				unansList.add(q)
		}
		[questionInstanceList: unansList, questionInstanceTotal: unansList.size()]
	}
}
