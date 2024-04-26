package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Likes;
import com.smhrd.model.LikesDAO;
import com.smhrd.model.MemberDAO;


public class LikeService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String mb_Email = request.getParameter("mb_Email");
		String artist_Email = request.getParameter("artist_Email");
		System.out.println(mb_Email + artist_Email);
		
		   Likes like = new Likes(mb_Email,artist_Email);
		   
		   
		   int cnt = new LikesDAO().toggleLike(like); //좋아요 값 넣기
		   
		
		   if (cnt > 0) {
		        response.getWriter().print("liked"); // 'liked' 상태 반환
		    } else {
		        response.getWriter().print("unliked"); // 'unliked' 상태 반환
		    }

}
}
