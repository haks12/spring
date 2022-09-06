package ch01.home;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/home/add")
public class GetPost extends HttpServlet {
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServerException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<h2>" + req.getMethod() + "</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);		
	}
}