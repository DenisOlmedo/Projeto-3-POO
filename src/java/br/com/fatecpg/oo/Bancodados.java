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
  public static ArrayList<Cliente> getcadastrocliente(){
      if(cadastrocliente==null){
          cadastrocliente = new ArrayList<>();
      }
      return cadastrocliente;
  }
}
