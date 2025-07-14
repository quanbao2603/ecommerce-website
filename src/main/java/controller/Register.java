package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.userDAO;
import util.Encryption;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("re-password");
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		request.setAttribute("re-password", repassword);
		String url = "";
		String error = "";
		userDAO userDAO = new userDAO();
		if (userDAO.CheckUsernameExists(username)) {
			error = "Tên đăng nhập đã tồn tại";
		}
		if(!password.equals(repassword)) {
			error = "Mật khẩu nhập lại không khớp";
		} else {
			password = Encryption.EncryptionByBCrypt(password);
		}
		if(error.length()>0) {
			url = "/auth/Register.jsp";
		} else {
			url = "/Homepage.jsp";
		}
		request.setAttribute("error", error);
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
