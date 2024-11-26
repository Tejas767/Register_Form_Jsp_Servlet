package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regform")
public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();

		String name = req.getParameter("name");
		String myemail = req.getParameter("email");
		String mygender = req.getParameter("gender");
		String mypass = req.getParameter("password");
		String mycity = req.getParameter("city");

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/registration", "root", "Root");

			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, myemail);
			ps.setString(3, mygender);
			ps.setString(4, mypass);
			ps.setString(5, mycity);

			int count = ps.executeUpdate();

			if (count > 0) {
				resp.setContentType("text/html");
				out.print("<div class='success-message'>user registered successfully</div>");
				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			} else {

				resp.setContentType("text/html");
				out.print("<h3 style='color:red'>user not registered succesfully</h3>");

				RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
				rd.include(req, resp);
			}

		}

		catch (Exception e) {

			e.printStackTrace();

			resp.setContentType("text/html");
			out.print("<h3 style='color:red'>Ecxeption occured:" + e.getMessage() + "</h3>");

			RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
			rd.include(req, resp);
		}
	}

}
