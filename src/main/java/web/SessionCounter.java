package web;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.ArrayList;

@WebListener
public class SessionCounter implements HttpSessionListener {
	public static final String COUNTER = "SESSION-COUNTER";
	private final List<String> sessions = new ArrayList<>();

	public void sessionCreated(HttpSessionEvent event) {
		System.out.println("SessionCounter.sessionCreated");
		HttpSession session = event.getSession();
		sessions.add(session.getId());
		System.out.println(session.getId());
		session.setAttribute(SessionCounter.COUNTER, this.sessions.size());
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		System.out.println("SessionCounter.sessionDestroyed");
		HttpSession session = event.getSession();
		sessions.remove(session.getId());
		session.setAttribute(SessionCounter.COUNTER, this);
	}

	public int getActiveSessionNumber() {
		return sessions.size();
	}
}