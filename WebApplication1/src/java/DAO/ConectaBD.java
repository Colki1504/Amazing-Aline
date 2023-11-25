package DAO;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author RickQ
 */
public class ConectaBD {
    
    public Connection conexaoBD() {
        Connection con = null;
        try {
            // Carregar o driver JDBC
            Class.forName("com.mysql.jdbc.Driver");

            // URL de conexão com o banco de dados
            String url = "jdbc:mysql://localhost:3306/amazing?user=root&password=";

            // Estabelecer a conexão com o banco de dados
            con = DriverManager.getConnection(url);
        } catch (Exception e) {
            out.print(" Erro" + e.getMessage());
        }
        return con;
    }
}
