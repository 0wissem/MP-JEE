package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// Source de données
public class UserCrud {
	public static final List<User> users = new ArrayList<User>();

	public UserCrud() {

	}
	// static {
	// TODO Auto-generated constructor stub
	// users.add(new User("Sami","Frikha","admin@gmail.com","1234"));
	// users.add(new User("Salma","Tounsi","invite","invite"));
	// users.add(new User("Adel","Triki","user","user"));
	// }

	public static List<User> getAllUser() {
		final List<User> usersData = new ArrayList<>();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from user");
			// ps.setString(1, "%" + mc + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setPrenom(rs.getString("PRENOM"));
				user.setNom(rs.getString("NOM"));
				user.setLogin(rs.getString("LOGIN"));
				user.setPwd(rs.getString("PWD"));
				user.setId(rs.getInt("ID"));
				usersData.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return usersData;
	}

	public static User getUserData(String login, String pwd) {
		User user = new User();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from user where login=? and pwd=?");
			ps.setString(1, login);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				if (rs.getString("LOGIN") != null) {
					user.setPrenom(rs.getString("PRENOM"));
					user.setNom(rs.getString("NOM"));
					user.setLogin(rs.getString("LOGIN"));
					user.setPwd(rs.getString("PWD"));
					user.setId(rs.getInt(1));
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public static User getUserData(String login) {
		User user = new User();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from user where login=?");
			ps.setString(1, login);
			// ps.setString(1, "%" + mc + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				if (rs.getString("LOGIN") != null) {
					user.setPrenom(rs.getString("PRENOM"));
					user.setNom(rs.getString("NOM"));
					user.setLogin(rs.getString("LOGIN"));
					user.setPwd(rs.getString("PWD"));
					user.setId(rs.getInt("ID"));
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public static User editUserData(String prenom, String nom, String login, String pwd, int id) {
		User user = new User();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("UPDATE user SET nom=?, prenom=?,login=?,pwd=? where id=?");
			ps.setString(1, nom);
			ps.setString(2, prenom);
			ps.setString(3, login);
			ps.setString(4, pwd);
			ps.setInt(5, id);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public static List<User> getUsersByMotCle(String mc) {
		List<User> users = new ArrayList<User>();
		Connection conn = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from USER where NOM LIKE ?");
			ps.setString(1, "%" + mc + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("ID"));
				u.setPrenom(rs.getString("PRENOM"));
				u.setNom(rs.getString("NOM"));
				u.setLogin(rs.getString("LOGIN"));
				users.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	public static User getUserById(int id) {
		User user = new User();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from user where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if (rs.getString("LOGIN") != null) {
					user.setPrenom(rs.getString("PRENOM"));
					user.setNom(rs.getString("NOM"));
					user.setLogin(rs.getString("LOGIN"));
					user.setPwd(rs.getString("PWD"));
					user.setId(rs.getInt(1));
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public static User deleteUserById(int id) {
		User user = new User();
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("DELETE  from user where id=?");
			ps.setInt(1, id);
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	public static void addUser(User u) {
		
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO user (prenom, nom,login,pwd) VALUES (?, ?, ?,?)");
			ps.setString(1, u.getPrenom());
			ps.setString(2, u.getNom());
			ps.setString(3, u.getLogin());
			ps.setString(4, u.getPwd());
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static int getNumberOfUsers() {
		int numberOfRows=0;
		try {
			Connection conn = SingletonConnection.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT COUNT(*)  from user");
			ResultSet rs = ps.executeQuery();
			  if (rs.next()) {
			        numberOfRows = rs.getInt(1);
			        System.out.println("numberOfRows= " + numberOfRows);
			      } else {
			        System.out.println("error: could not get the record counts");
			      }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return numberOfRows;
	}
}
