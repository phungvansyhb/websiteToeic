package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import Db.Dbconnect;
import bean.member;

/**
 * Servlet implementation class registerController
 */
@WebServlet("/registerController")
public class registerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public registerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rdp = request.getRequestDispatcher("View/user/Regis.jsp");
		rdp.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String fullName = request.getParameter("fullname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
			member mb = new member();
			mb.setFullName(fullName);
			mb.setMembername(username);
			mb.setMemeberpass(password);
		try {
			boolean check = RegisterDao.verify(Dbconnect.conn(), mb);
			if(check) {
				request.setAttribute("msg", "This username already exist!");
				RequestDispatcher rdp = request.getRequestDispatcher("View/user/Regis.jsp");
				rdp.forward(request, response);
			}
			else {
			boolean add =RegisterDao.Insert(Dbconnect.conn(), mb);
			if(add) {
				request.setAttribute("msg", "Register Success!");
				RequestDispatcher rdp = request.getRequestDispatcher("loginForward");
				rdp.forward(request, response);
			}
			else {	
				request.setAttribute("msg", "Register Fail!");
				RequestDispatcher rdp = request.getRequestDispatcher("View/user/Regis.jsp");
				rdp.forward(request, response);
				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
