package stackupflow

class Tag {
	
	int id
	String name
	
	static belongsTo = [taggedQuestions: Question,followingUsers: User]

    static constraints = {
    }
}
