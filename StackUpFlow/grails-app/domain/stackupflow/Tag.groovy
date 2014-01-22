package stackupflow

class Tag {
	
	int id
	String name
	Collection<Question> taggedQuestions
	Collection<User> followingUsers

    static constraints = {
    }
}
