package FinalServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class signupServlet
 */
@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String INSERT = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public signupServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String kullanici_isim = request.getParameter("kullanici_isim");
		String isim = request.getParameter("isim");
		String soyisim = request.getParameter("soyad");
		String sifre = request.getParameter("sifre");
		String sifreTekrar = request.getParameter("sifretekrar");

		PrintWriter out = response.getWriter();

		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/final_project", "root",
					"root");

			PreparedStatement pstatement = conn
					.prepareStatement("INSERT INTO kullanicilar(kullanici_ad, kullanici_soyad, kullanici_giris_ad, kullanici_sifre) values(?,?,?,?)");
			pstatement.setString(1, kullanici_isim);
			pstatement.setString(2, isim);
			pstatement.setString(3, soyisim);
			pstatement.setString(4, sifre);

			int sonuc = pstatement.executeUpdate();

			if (sonuc == 1)
				response.sendRedirect("index.jsp");
		}

		catch (ClassNotFoundException e) {
			out.println(e.getMessage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
