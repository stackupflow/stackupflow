package stackupflow

import org.springframework.dao.DataIntegrityViolationException

class AnswerController {

	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [answerInstanceList: Answer.list(params), answerInstanceTotal: Answer.count()]
    }

    def create() {
        [answerInstance: new Answer(params)]
    }

    def save() {
		Answer an = new Answer()
		an.content = params.answer
		an.creationDate = new Date()
		an.lastEditDate = new Date()
		an.score = 0
		an.author = springSecurityService.getCurrentUser()
		an.question = Question.findById(params.question)
        def answerInstance = an
        if (!answerInstance.save(flush: true)) {
            render(view: "create", model: [answerInstance: answerInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'answer.label', default: 'Answer'), answerInstance.id])
        redirect(controller:"question" , action: "show", id: params.question)
    }

    def show(Long id) {
        def answerInstance = Answer.get(id)
        if (!answerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "list")
            return
        }

        [answerInstance: answerInstance]
    }

    def edit(Long id) {
        def answerInstance = Answer.get(id)
        if (!answerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "list")
            return
        }

        [answerInstance: answerInstance]
    }

    def update(Long id, Long version) {
        def answerInstance = Answer.get(id)
        if (!answerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (answerInstance.version > version) {
                answerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'answer.label', default: 'Answer')] as Object[],
                          "Another user has updated this Answer while you were editing")
                render(view: "edit", model: [answerInstance: answerInstance])
                return
            }
        }

        answerInstance.properties = params

        if (!answerInstance.save(flush: true)) {
            render(view: "edit", model: [answerInstance: answerInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'answer.label', default: 'Answer'), answerInstance.id])
        redirect(action: "show", id: answerInstance.id)
    }

    def delete(Long id) {
        def answerInstance = Answer.get(id)
        if (!answerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "list")
            return
        }

        try {
            answerInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'answer.label', default: 'Answer'), id])
            redirect(action: "show", id: id)
        }
    }
}
