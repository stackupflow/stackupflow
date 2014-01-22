package stackupflow

class Question {
	
	int id
	User author
	String title
	Date creationDate
	String content
	Date lastEditDate
	int score
	Collection<Tag> tags
	Collection<Answer> answers
	

    static constraints = {
    }
}
