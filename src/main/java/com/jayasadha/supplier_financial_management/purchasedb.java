package com.jayasadha.supplier_financial_management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class purchasedb {
	
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/amani";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Amani_1221";

	private static final String INSERT_USERS_SQL = "INSERT INTO purchase" + "  (product_id, supplier_id,date ,quantity,unit_price,status) "
			+ "VALUES "
			+ " (?, ?, ? , ? , ?,?);";

	private static final String SELECT_USER_BY_ID = "select purchase_id,product_id, supplier_id,date,quantity,unit_price,status"
			+ " from purchase where purchase_id =?";
	private static final String SELECT_ALL_USERS = "select * from purchase";
	private static final String DELETE_USERS_SQL = "delete from purchase where purchase_id = ?;";
	private static final String UPDATE_USERS_SQL = "update purchase set product_id = ?,supplier_id= ?, date =? ,quantity =?, unit_price= ?,"
			+ " status = ? where purchase_id = ?;";

	public purchasedb () {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(purchase p) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, p.getProductid());
			preparedStatement.setInt(2, p.getSuppid());
			preparedStatement.setString(3, p.getDate());
			preparedStatement.setInt(4, p.getQuantity());
			preparedStatement.setFloat(5, p.getUnitprice());
			preparedStatement.setString(6, p.getStatus());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public purchase selectUser(int id) {
		purchase user = null;
		
		try (Connection connection = getConnection();
				
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// execurte query
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				String name = rs.getString("product_id");
				int contact = rs.getInt("supplier_id");
				String mail = rs.getString("date");
				int add1 = rs.getInt("quantity");
				float add2 = rs.getFloat("unit_price");
				String status=rs.getString("Status");
				user = new purchase(id, name,contact , mail, add1, add2,status);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}

	public List<purchase> selectAllUsers() {

		//listing
		List<purchase> users = new ArrayList<>();
		// Establishing a Connection
		try (Connection connection = getConnection();

				//Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// - Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("purchase_id");
				String proid = rs.getString("product_id");
				int supid = rs.getInt("supplier_id");
				String date = rs.getString("date");
				int quant = rs.getInt("quantity");
				float unitp = rs.getFloat("unit_price");
				String status=rs.getString("Status");
				users.add(new purchase(id,proid,supid,date,quant,unitp,status));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateUser(purchase book) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			statement.setString(1, book.getProductid());
			statement.setInt(2, book.getSuppid());
			statement.setString(3, book.getDate());
			statement.setInt(4, book.getQuantity());
			statement.setFloat(5, book.getUnitprice());
			statement.setString(6, book.getStatus());
			statement.setInt(7, book.getPid());
			
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
