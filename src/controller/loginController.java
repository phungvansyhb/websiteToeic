package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.LoginDao;
import Db.Dbconnect;
import bean.member;


@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rdp = request.getRequestDispatcher("View/user/Login.jsp");
		rdp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		member mb = new member();
		mb.setMembername(username);
		mb.setMemeberpass(pass);
		boolean check;
		try {
			check = LoginDao.Authenicate(Dbconnect.conn(), mb);
			if(check) {
				int type = LoginDao.Gettype(Dbconnect.conn(), mb);
				if(type == 1) {
					
					HttpSession ss = request.getSession(true);
					ss.setAttribute("membername", username);
					RequestDispatcher rdp = request.getRequestDispatcher("HomeForward");
					rdp.forward(request, response);
				}else {
					HttpSession ss = request.getSession(true);
					ss.setAttribute("adminname", username);
					RequestDispatcher rdp = request.getRequestDispatcher("Adminforward");
					rdp.forward(request, response);
					
				}
			}else {
				
				request.setAttribute("msg", "Account not exist!");
				doGet(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
