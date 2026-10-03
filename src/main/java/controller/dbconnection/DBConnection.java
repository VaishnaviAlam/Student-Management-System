//package controller.dbconnection;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DBConnection {
//
//    private static Connection connection;
//
//    private static final String URL = "jdbc:postgresql://localhost:5432/school";
//    private static final String USERNAME = "postgres";
//    private static final String PASSWORD = "123";
//
//    public static Connection getConnection() {
//
//        try {
//
//            if (connection == null || connection.isClosed()) {
//
//                Class.forName("org.postgresql.Driver");
//
//                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
//
//                System.out.println("Database Connected Successfully...");
//            }
//
//        } catch (ClassNotFoundException e) {
//
//            System.out.println("PostgreSQL Driver Not Found");
//            e.printStackTrace();
//
//        } catch (SQLException e) {
//
//            System.out.println("Database Connection Failed");
//            e.printStackTrace();
//        }
//
//        return connection;
//    }
//}
package controller.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static Connection connection;

    private static final String URL = "jdbc:postgresql://localhost:5432/school";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "123";

    public static Connection getConnection() {

        try {

            System.out.println("Loading PostgreSQL Driver...");

            Class.forName("org.postgresql.Driver");

            System.out.println("Connecting to Database...");

            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

            System.out.println("Database Connected Successfully...");

        } catch (Exception e) {

            System.out.println("Connection Failed");
            e.printStackTrace();
        }

        return connection;
    }
}
