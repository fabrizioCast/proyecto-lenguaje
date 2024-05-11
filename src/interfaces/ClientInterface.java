package interfaces;

import java.util.List;

import entidades.Client;

public interface ClientInterface {
	public int createClient(Client client);

	public List<Client> listClient();

	public Client getClient(String id);

	public int updateClient(Client client);

	public int deleteClient(String id);
}
