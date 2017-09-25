// Página onde será feito o HashMap
package app;

import br.com.fatecpg.oo.Cliente;
import br.com.fatecpg.oo.Fornecedor;
import java.util.HashMap;
import java.util.Map;

public class BdHm {
    private static HashMap<Integer,Cliente> cliente;
    public static HashMap<Integer,Cliente> getCliente(){
        if (cliente==null) cliente=new HashMap<>();
        return cliente;
    }
    private static HashMap<Integer,Fornecedor> fornecedor;
    public static HashMap<Integer,Fornecedor> getFornecedor(){
        if (fornecedor==null) fornecedor=new HashMap<>();
        return fornecedor;
    }
    
}
