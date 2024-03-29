package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CertiDAO;
import com.model.CertiVO;

@WebServlet("/GoBoard")
public class GoBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		CertiDAO dao = new CertiDAO();
		
		List<CertiVO> list = dao.pageList(page);
		
		int board = dao.BoardList().size();

		request.setAttribute("list", list);
		request.setAttribute("board", board);

		request.setCharacterEncoding("UTF-8");
		String nextPage = "board.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);

	}

}
