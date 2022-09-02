package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")
public class C1_Get extends HttpServlet {
	@Override
	public void doGet (HttpServletRequest req, HttpServletResponse res)// get은 읽기, post는 쓰기 // doGet은 request를 받는다. 조건] request type이 do일때
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");// response header에 저장
		PrintWriter out = res.getWriter(); // response body에 저장
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}