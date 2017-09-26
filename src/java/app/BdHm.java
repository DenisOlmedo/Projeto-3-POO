
package app;

import br.com.fatecpg.oo.Cliente;
import br.com.fatecpg.oo.Fornecedor;
import java.util.HashMap;
import java.util.Map;

public class BdHm {
    private static int initialSize = 16;
               
    private static double loadFactor = 0.75;
    
    private static double sizeToRefresh = initialSize * loadFactor;
    
    private static Map<Integer,Cliente> cliente;
    public static Map<Integer,Cliente> getCliente(){
        if (cliente==null) cliente = new HashMap<Integer,Cliente>();
        return cliente;
    }
    private static Map<Integer,Fornecedor> fornecedor;
    public static Map<Integer,Fornecedor> getFornecedor(){
        if (fornecedor==null) fornecedor = new HashMap<Integer,Fornecedor>();
        return fornecedor;
    }
}
