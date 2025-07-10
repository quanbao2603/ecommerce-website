package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class userDAO {
	public User check_account(User t) {
		User ketqua = null;

		try {
			Connection con = JDBCUtil.getConnection();

			String sql = "SELECT * FROM user WHERE username=? and password=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getUsername());
			st.setString(2, t.getPassword());

			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				ketqua = new User();
				ketqua.setUsername(rs.getString("username"));
				ketqua.setPassword(rs.getString("password"));
			}

			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ketqua;
	}
}
