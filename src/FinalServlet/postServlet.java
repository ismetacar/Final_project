package FinalServlet;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.sun.istack.internal.logging.Logger;

@WebServlet("/postServlet")
public class postServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public postServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String baslik = request.getParameter("gonderi_basligi");
		String gonderi = request.getParameter("textgonderi");
		

		Connection con = null;

		PrintWriter out = response.getWriter();

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/final_project", "root",
					"00966501035985");

			PreparedStatement pstatement = con
					.prepareStatement("INSERT INTO post(gonderi_basligi, gonderi_mesaji) values(?, ?)");

			pstatement.setString(1, baslik);
			pstatement.setString(2, gonderi);

			int updateQuery = pstatement.executeUpdate();

			if (updateQuery == 1)
				JOptionPane.showMessageDialog(null,
						"post gonderme islemi basarili");
			response.sendRedirect("admin.jsp");

			// response.sendRedirect("servisler.jsp");

		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		// response.sendRedirect("anasayfa.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
