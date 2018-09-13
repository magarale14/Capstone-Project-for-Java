import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/onet?trueSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "abcd");
		
		Statement statement = connect.createStatement();
		
		ResultSet resultset = statement.executeQuery("SELECT * FROM skills LIMIT 10");
		while(resultset.next()) {
			System.out.print (resultset.getString(1) + " : " + resultset.getString(2));
		}
		
		
		
		
		
		
	}
}


