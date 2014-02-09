package stackupflow

import java.util.Calendar;
import java.util.Collection;

class Answer {
	
	int id
	Date creationDate
	String content
	Date lastEditDate
	int score
	boolean isAccepted

	static belongsTo = [question: Question, author: User]
	
    static constraints = {
    }
}
