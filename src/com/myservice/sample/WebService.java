package com.myservice.sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class WebService {

	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	String kullaniciAd;
	String sifre;

	public WebService() {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/webservicedb", "root",
					"root");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public String Login(String kullaniciAd, String sifre) {

		String varmi = "Kayitli degilsiniz.";
		String sql = "select * from webservicedb.kullanicilar where uye_kullanici_ad=? and uye_passwd=?";

		// JOptionPane.showMessageDialog(null, "baglandi");

		try {

			pst = (PreparedStatement) conn.prepareStatement(sql);
			pst.setString(1, kullaniciAd);
			pst.setString(2, sifre);
			rs = pst.executeQuery();

			while (rs.next()) {

				varmi = "hosgeldin, " + kullaniciAd;

			}
		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return varmi;

	}

}
