/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import MVC.PassagemMVC;
import MVC.UserMVC;
import MVC.VoosMVC;
import java.util.ArrayList;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author RickQ
 */
public class Read {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<PassagemMVC> lista = new ArrayList<>();
    ArrayList<VoosMVC> listaVoos = new ArrayList<>();
    

public ArrayList<VoosMVC> pesquisarVoos(){
    String sql = "select * from voos;";
    con = (Connection) new ConectaBD().conexaoBD();
    
    try{
    
        pstm = (PreparedStatement) con.prepareStatement(sql);
        rs = pstm.executeQuery(sql);
        while(rs.next()){
        VoosMVC voos = new VoosMVC();
        voos.setIdVoos(rs.getInt("idVoos"));
        voos.setLocalDeSaida(rs.getString("localDeSaida"));
        voos.setLocalChegada(rs.getString("localDeChegada"));
        voos.setDiaSaida(rs.getString("diaDeSaida"));
        voos.setDuraca(rs.getInt("duracao"));
        voos.setValor(rs.getDouble("valor"));
        listaVoos.add(voos);
        }
    }
    catch(Exception e ){
    
    }
    return listaVoos;
    
} 
   
    
public ArrayList<PassagemMVC> pesquisarPassagem() {
        
    String sql = "select * from passagem;";
    con = (Connection) new ConectaBD().conexaoBD();
    
    try{
         pstm = (PreparedStatement) con.prepareStatement(sql);
         rs = pstm.executeQuery(sql);
         
         while(rs.next()){
            PassagemMVC passagem = new PassagemMVC();
            passagem.setIdPassagem(rs.getInt("idPassagem"));
            passagem.setLocalChegada(rs.getString("localDeChegada"));
            passagem.setLocalSaida(rs.getString("diaDeSaida"));
            passagem.setLocalEntrada(rs.getString("localDeEntrada"));
            passagem.setHoraSaida(rs.getString("horarioDeSaida"));
            passagem.setHorachegada(rs.getString("horarioDechegada"));
            passagem.setDiaChegada(rs.getString("diaDeChegada"));
            passagem.setDiaSaida(rs.getString("diaDeSaida"));
            passagem.setDuracao(rs.getInt("duracao"));
            passagem.setValor(rs.getDouble("valor"));
            passagem.setAdulto(rs.getInt("adulto"));
            passagem.setCrianca(rs.getInt("crianca"));
            passagem.setBebe(rs.getInt("bebe"));
             
             lista.add(passagem);
         }
         
    }
    catch(Exception e){}
    return lista;
    
}

public ResultSet conusultarUSer(UserMVC ciente){
        con = (Connection) new ConectaBD().conexaoBD();
    try{ 
        String sql = "select * from cliente where email = ? and senha = ?";

        pstm = (PreparedStatement) con.prepareStatement(sql);
        UserMVC cliente = new UserMVC();
        pstm.setString(1,cliente.getEmail());
        pstm.setString(2,cliente.getSenha());

        rs = pstm.executeQuery();
        return rs;
    }
    
    
    catch(SQLException e){
    
        return null;
    }
    

}



}
