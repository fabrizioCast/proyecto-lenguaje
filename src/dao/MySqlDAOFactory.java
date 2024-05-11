package dao;

import interfaces.AuthInterface;
import interfaces.ClientInterface;
import interfaces.ProductInterface;
import interfaces.ProviderInterface;
import modelo.AuthModel;
import modelo.ClientModel;
import modelo.ProductModel;
import modelo.ProviderModel;

public class MySqlDAOFactory extends DAOFactory {
  @Override
  public AuthInterface getAuth() {
    return new AuthModel();
  }
  
  public ClientInterface getClient() {
	  return new ClientModel();
  }
  
  public ProductInterface getProduct() {
	  return new ProductModel();
  }

  
  public ProviderInterface getProvider() {
	  return new ProviderModel();
  }
}
