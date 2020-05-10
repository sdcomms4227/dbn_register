package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

	private Connection conn;

	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql//localhost:3307/register";
			String dbID = "dbn";
			String dbPassword = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int registerCheck(String userID) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from user where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return 0; // 이미 존재하는 회원
			} else {
				return 1; // 가입 가능한 회원 아이디
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터 베이스 오류
	}

	public int register(UserDTO userDTO) {
		PreparedStatement pstmt = null;
		String sql = "insert into user values(?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userDTO.getUserID());
			pstmt.setString(2, userDTO.getUserPassword());
			pstmt.setString(3, userDTO.getUserName());
			pstmt.setInt(4, userDTO.getUserAge());
			pstmt.setString(5, userDTO.getUserGender());
			pstmt.setString(6, userDTO.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return -1; // 데이터 베이스 오류
	}

}
