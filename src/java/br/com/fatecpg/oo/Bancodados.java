/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.oo;

/**
 *
 * @author Marjorie
 */

import java.util.ArrayList;
public class Bancodados {
    
   private static ArrayList<Cliente> cadastrocliente;  
   private static ArrayList<Fornecedor> fornecedores;
    
   
  public static ArrayList<Cliente> getcadastrocliente(){
      if(cadastrocliente==null){
          cadastrocliente = new ArrayList<>();
      }
      return cadastrocliente;
  }
  
    public static ArrayList<Fornecedor> getFornecedor(){
        if(fornecedores==null){
            fornecedores = new ArrayList<>();
        }
        return fornecedores;
    }
}
