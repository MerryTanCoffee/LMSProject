package kr.or.ddit.course.controller;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Controller;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ServerEndpoint(value = "/courseAppl.do/{userId}")
public class CourseWebSocket {

	private static final ConcurrentHashMap<String, Session> sessions = new ConcurrentHashMap<>();
	
	@OnOpen
	public void onOpen(Session session, @PathParam(value = "userId") String userId) {
		
        sessions.put(userId, session);
		
		log.info("접속한 유저ID: " + userId);
		log.info(userId + "의 session: " + session.getId());
		log.info("in현재 접속한 사용자들: " + sessions.toString());
	}
	
	@OnMessage
    public void onMessage(Session session, String message) throws IOException {
        log.info("변동될 과목 강의계획코드: " + message);
        sendToAll(message);
    }

    public static void sendToAll(String message) {
        sessions.forEach((id, session) -> {
            if (session.isOpen()) {
                try {
                    session.getBasicRemote().sendText(message);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
    }
	
	@OnClose
    public void onClose(Session session) {
        sessions.values().remove(session);
        log.info("out현재 접속한 사용자들: " + sessions.toString());
    }
}
