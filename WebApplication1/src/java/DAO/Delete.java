/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import MVC.PassagemMVC;
import MVC.VoosMVC;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author RickQ
 */
public class Delete {
    Connection con;
    PreparedStatement pstm;
    
    public void DeleteVoos(VoosMVC voos){
    
       String sql = "delete from voos where idVoos= ? ;";
       con = (Connection) new ConectaBD().conexaoBD();
       try{
       pstm = (PreparedStatement) con.prepareStatement(sql);
       pstm.setInt(1,voos.getIdVoos());

       
        pstm.execute();
        pstm.close();
            
       
       }catch(SQLException e){
           
       }
        
    }
    
    
    public void DeletePacotes(PassagemMVC passagem){
        
       String sql = "delete from passagem where idPassagem= ? ;";
       con = (Connection) new ConectaBD().conexaoBD();
       try{
       pstm = (PreparedStatement) con.prepareStatement(sql);
       pstm.setInt(1,passagem.getIdPassagem());

       
        pstm.execute();
        pstm.close();
            
       
       }catch(SQLException e){
           
       }
    
    }
    
}
