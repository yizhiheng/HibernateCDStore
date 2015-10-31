package com.jwt.hibernate.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import com.jwt.hibernate.dao.CDDAO;
import com.jwt.hibernate.bean.CD;

@WebServlet("/EditCDControllerServlet")
public class EditCDControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cdName = request.getParameter("cdName");


		String responseJson = "{" +
                "name: 'heal the world'," +
                "category: 'pop'" +
                "}";

        response.setContentType("application/html");
        response.setCharacterEncoding("utf-8");

        PrintWriter writer = response.getWriter();
        writer.println(responseJson);
        writer.println("<html>");
        writer.println("body");
        writer.println(responseJson);
        writer.println(responseJson);


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
