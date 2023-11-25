/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import MVC.*;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author RickQ
 */
public class Create {
    Connection con;
    PreparedStatement pstm;
    
    public void CadastrarCliente(UserMVC cliente){
    String sql = "insert into cliente(nome,email,cpf,cidade,passaporte,senha) values(?,?,?,?,?,?)";
    con = (Connection) new ConectaBD().conexaoBD();
    try{
        
        pstm = (PreparedStatement) con.prepareStatement(sql);
        pstm.setString(1,cliente.getNome());
        pstm.setString(2,cliente.getEmail());
        pstm.setString(3,cliente.getCpf());
        pstm.setString(4,cliente.getCidade());
        pstm.setString(5,cliente.getPassaporte());
        pstm.setString(6,cliente.getSenha());
        
        pstm.execute();
        pstm.close();
    }
    catch(SQLException e){
    }
    };
    
   public void cadastrarCompanhia(CompanhiaMVC companhia){
         
    String sql = "insert into companhia(nome,email,cnpj,senha) values(?,?,?,?)";
    con = (Connection) new ConectaBD().conexaoBD();
    try{
       
        pstm = (PreparedStatement) con.prepareStatement(sql);
        pstm.setString(1,companhia.getNome());
        pstm.setString(2,companhia.getEmail());
        pstm.setString(3,companhia.getCnpj());
        pstm.setString(4,companhia.getSenha());

        
        pstm.execute();
        pstm.close();
    }
    catch(SQLException e){
    }
    };
   
   
   public void cadastrarPacotes(PassagemMVC passagem){
   
       String sql = "insert into passagem(localDeSaida,diaDeSaida,horarioDeSaida,localDeChegada,localDeEntrada,adulto,crianca,bebe,duracao,valor)"
               + "values(?,?,?,?,?,?,?,?,?,?);";
        con = (Connection) new ConectaBD().conexaoBD();
        try{
        pstm = (PreparedStatement) con.prepareStatement(sql);
        pstm.setString(1,passagem.getLocalSaida());
        pstm.setString(2,passagem.getDiaSaida());
        pstm.setString(3,passagem.getHoraSaida());
        pstm.setString(4,passagem.getLocalChegada());
        pstm.setString(5,passagem.getDiaChegada());
        pstm.setString(6,passagem.getHorachegada());
        pstm.setString(7,passagem.getLocalEntrada());
        pstm.setInt(8,passagem.getAdulto());
        pstm.setInt(9,passagem.getCrianca());
        pstm.setInt(10,passagem.getBebe());
        
        pstm.execute();
        pstm.close();
            
        }catch(SQLException e){}
   }
   
   public void cadastrarVoos(VoosMVC voos){
       
       String sql = "insert into voos(localDeSaida,diaDeSaida,horarioDeSaida,localDeChegada,duracao,valor) "
               + "values(?,?,?,?,?,?);";
       con = (Connection) new ConectaBD().conexaoBD();
       try{
       pstm = (PreparedStatement) con.prepareStatement(sql);
       pstm.setString(1,voos.getLocalDeSaida());
       pstm.setString(2,voos.getDiaSaida());
       pstm.setString(3,voos.getHoraSaida());
       pstm.setString(4,voos.getLocalChegada());
       pstm.setInt(5,voos.getDuraca());
       pstm.setDouble(6, voos.getValor());
       
        pstm.execute();
        pstm.close();
            
       
       }catch(SQLException e){
           
       }
       
   }
  }

