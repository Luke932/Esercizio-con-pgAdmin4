package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Application {
	static Connection conn = null;

	public static void main(String[] args) {
		String url = "jdbc:postgresql://localhost:5432/prova?useSSL=false";
		String username = "postgres";
		String password = "1234";
		try {
			System.out.println("Connecting to PG...");

			conn = DriverManager.getConnection(url, username, password);

			System.out.println("Connected successfully");

		} catch (Exception e) {
			e.printStackTrace();
		}

		// ---------------------INSERT----------------------------------
		insertStudent(1, "Luca", "Giacalone", "M", "1993-05-20", 5, 8);
	}

	public static void insertStudent(int id, String name, String lastname, String gender, String birthday, int min_vote,
			int max_vote) {
		String sqlInsert = "INSERT INTO school_students(id, name, lastname, gender, birthday, min_vote, max_vote) VALUES (?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement s = conn.prepareStatement(sqlInsert);
			s.setInt(1, id);
			s.setString(2, name);
			s.setString(3, lastname);
			s.setString(4, gender);
			s.setString(5, birthday);
			s.setInt(6, min_vote);
			s.setInt(7, max_vote);
			s.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
