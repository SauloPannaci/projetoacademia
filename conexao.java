package org.libertas;

import java.sql.Connection;
import java.sql.DriverManager;
public class conexao {
private Connection connection;
	
	public conexao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			connection = DriverManager.getConnection(
					"jdbc:mysql://127.0.0.1:3306/"
					+"academia?verifyServerCertificate=false&useSSL=false",
					"root", "250409");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void desconecta(){
		try {
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
}