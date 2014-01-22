package stackupflow

import java.util.Calendar;
import java.util.Collection;

class Answer {
	
	int id
	User author
	Date creationDate
	String content
	Date lastEditDate
	int score
	Question question
	boolean isAccepted

    static constraints = {
    }
}
