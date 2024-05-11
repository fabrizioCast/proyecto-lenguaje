package interfaces;

import java.util.List;

import entidades.Provider;



public interface ProviderInterface {
	public int createProvider(Provider provider);

	public List<Provider> listProvider();

	public Provider getProvider(String id);

	public int updateProvider(Provider provider);

	public int deleteProvider(String id);
}
