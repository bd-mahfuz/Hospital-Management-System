package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditNurse
 */
@WebServlet("/EditNurse")
public class EditNurse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditNurse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		String userEmail=request.getParameter("userEmail");
		String nurseName=request.getParameter("name");
		String nurseMail=request.getParameter("email");
		String addr=request.getParameter("address");
		String phone=request.getParameter("phone");
		
		//storing nurse info in database in table(nurse).
		Connection connection = null;
		Statement statement = null;
		connection = dbConnector.DbConnector.getConnection();
		
		try {
			statement = connection.createStatement();
			String sql="update nurse set n_name='"+nurseName+"', email='"+nurseMail+"', address='"+addr+"',"
					+ " phone='"+phone+"' where email='"+userEmail+"'";
			
			int i = statement.executeUpdate(sql);
			if (i>0) {
				request.setAttribute("message", "update success");
				request.getRequestDispatcher("nurse/nurseProfile.jsp").forward(request, response);
			}else{
				request.setAttribute("message", "update failed");
				request.getRequestDispatcher("nurse/nurseProfile.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}

}
