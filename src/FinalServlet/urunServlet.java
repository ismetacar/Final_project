package FinalServlet;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class urunServlet
 */
@WebServlet("/urunServlet")
public class urunServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public urunServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String urun_adi = request.getParameter("urunAd");
		String urun_bilgisi = request.getParameter("Fiyat");
		String urun_resim = request.getParameter("urunResim");

		Connection con = null;

		PrintWriter out = response.getWriter();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/final_project", "root",
					"root");

			PreparedStatement pstatement = con
					.prepareStatement("INSERT INTO urunler(urun_adi, urun_bilgisi,urun_resim) values(?,?,?)");
			pstatement.setString(1, urun_adi);
			pstatement.setString(2, urun_bilgisi);
			pstatement.setString(3, urun_resim);

			int updateQuery = pstatement.executeUpdate();

			if (updateQuery != 0) {
				out.println("Kayıt Başarılı");
			} else {
				out.println("Kayıt başarısız. Lütfen tekrar deneyin.");
			}
			response.sendRedirect("admin.jsp");
		} catch (SQLException e) {
			out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			out.println(e.getMessage());
		}

		// response.sendRedirect("anasayfa.jsp");
	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
