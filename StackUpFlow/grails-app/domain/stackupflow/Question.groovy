package stackupflow

class Question {
	
	int id
	User author
	String title
	Date creationDate
	String content
	Date lastEditDate
	int score
		
	static hasMany = [answers: Answer,tags: Tag]
	

    static constraints = {
    }
	
	String toString(){
		return title
	  }
}
