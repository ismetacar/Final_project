package FinalServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class kullaniciServlet
 */
@WebServlet("/kullaniciServlet")
public class kullaniciServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public kullaniciServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(true);
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		String kullaniciAd = request.getParameter("username");
		String sifre = request.getParameter("password");

		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/final_project", "root",
					"root");

			pst = conn
					.prepareStatement("SELECT kullanici_giris_ad, kullanici_sifre FROM kullanicilar WHERE kullanici_giris_ad='"
							+ kullaniciAd
							+ "'"
							+ " and kullanici_sifre='"
							+ sifre
							+ "'");
			rs = pst.executeQuery();

			request.removeAttribute("kullaniciyok");

			if (rs.next()) {

				request.setAttribute("uye_kullanici_ad", kullaniciAd);
				request.setAttribute("uye_passwd", sifre);

				RequestDispatcher dispacter = request
						.getRequestDispatcher("index.jsp");
				dispacter.forward(request, response);

			} else {

				request.setAttribute("kullaniciyok",
						"Gecerli kullanici bulunmamaktadir !");
				RequestDispatcher dispacter = request
						.getRequestDispatcher("login.jsp");
				dispacter.forward(request, response);

			}

		} catch (Exception ex) {
			ex.printStackTrace();
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
