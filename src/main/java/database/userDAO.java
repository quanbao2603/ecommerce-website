package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Role;
import model.User;

public class userDAO implements DAOInterface<User>{
	@Override
	public ArrayList<User> selectAll() {
		ArrayList<User> result = new ArrayList<User>();
		try {
			Connection con = JDBCUtil.getConnection();
			String sql = "SELECT * FROM user";
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				String userID = rs.getString(1);
				String rolename =  rs.getString(2);
				String username = rs.getString(3);
				String password = rs.getString(4);
				String email = rs.getString(5);
				Date createat = rs.getDate(6);
				Boolean status = rs.getBoolean(7);
				
				Role role  = new Role();
				role.setRolename(rolename);
				
				User user = new User(userID, role, username, password, email, createat, status);
				result.add(user);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public User selectById(User t) {
		User result = null;
		try {
			Connection con = JDBCUtil.getConnection();
			String sql = "SELECT * FROM user WHERE userID=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getUserID());
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				String userID = rs.getString(1);
				String rolename =  rs.getString(2);
				String username = rs.getString(3);
				String password = rs.getString(4);
				String email = rs.getString(5);
				Date createat = rs.getDate(6);
				Boolean status = rs.getBoolean(7);
				Role role  = new Role();
				role.setRolename(rolename);
				result = new User(userID, role, username, password, email, createat, status);
			}
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insert(User t) {
		int result = 0;
		try {
			Connection con = JDBCUtil.getConnection();
			String sql = "INSERT INTO user (userID, rolename, username, password, email, createat, status) "
					+ " VALUES (?,?,?,?,?,?,?)";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getUserID());
			st.setString(2, t.getRole().toString());
			st.setString(3, t.getUsername());
			st.setString(4, t.getPassword());
			st.setString(5, t.getEmail());
			st.setDate(6, t.getCreateat());
			st.setBoolean(7, t.isStatus());
			result = st.executeUpdate();
			System.out.println("Bạn đã thực thi: " + sql);
			System.out.println("Have" + result + "changed");
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insertAll(ArrayList<User> arr) {
		int count = 0;
		for (User user : arr) {
			count += this.insert(user);
		}
		return count;
	}

	@Override
	public int delete(User t) {
		int result = 0;
		try {
			
			Connection con = JDBCUtil.getConnection();
			String sql = "DELETE from user " + " WHERE userID=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getUserID());
			System.out.println(sql);
			result = st.executeUpdate();

			System.out.println("Bạn đã thực thi: " + sql);
			System.out.println("Have" + result + "changed");
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteAll(ArrayList<User> arr) {
		int count = 0;
		for (User user : arr) {
			count += this.delete(user);
		}
		return count;
	}

	@Override
	public int update(User t) {
		int result = 0;
		try {
			Connection con = JDBCUtil.getConnection();
			String sql = "UPDATE user " + " SET " + " rolename=?" + ", username=?" + ", password=?" + ", email=?" + ", createat=?"
					+ ", status=?" + " WHERE userID=?";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getUserID());
			st.setString(2, t.getRole().toString());
			st.setString(3, t.getUsername());
			st.setString(4, t.getPassword());
			st.setString(5, t.getEmail());
			st.setDate(6, t.getCreateat());
			st.setBoolean(7, t.isStatus());
			System.out.println(sql);
			result = st.executeUpdate();
			System.out.println("Bạn đã thực thi: " + sql);
			System.out.println("Have" + result + "changed");
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean CheckUsernameExists(String username) {
	    boolean exists = false;

	    try {
	        Connection con = JDBCUtil.getConnection();
	        String sql = "SELECT 1 FROM user WHERE username = ? LIMIT 1";
	        PreparedStatement st = con.prepareStatement(sql);
	        st.setString(1, username);
	        ResultSet rs = st.executeQuery();
	        if (rs.next()) {
	            exists = true; 
	        }
	        JDBCUtil.closeConnection(con);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return exists;
	}
	
	public boolean CheckAccount(User t) {
	    boolean exists = false;

	    try {
	        Connection con = JDBCUtil.getConnection();
	        String sql = "SELECT * FROM user WHERE username = ? and password=?";
	        PreparedStatement st = con.prepareStatement(sql);
	        st.setString(1, t.getUsername());
	        st.setString(2, t.getPassword());
	        ResultSet rs = st.executeQuery();
	        if (rs.next()) {
	            exists = true; 
	        }
	        JDBCUtil.closeConnection(con);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return exists;
	}
}
