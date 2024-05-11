package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidades.Client;
import interfaces.ClientInterface;
import util.MySqlConexion;

// create table client(
// 	id int auto_increment,
// 	firstName varchar(100) NOT NULL,
//     lastName varchar(100)  NOT NULL,
//     phone varchar(100),
//     email varchar(100) NOT NULL,
//     primary key (id)
// );

public class ClientModel implements ClientInterface {

	@Override
	public int createClient(Client client) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = MySqlConexion.getConexion();
			String query = "INSERT INTO client VALUES (null, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, client.getFirstName());
			preparedStatement.setString(2, client.getLastName());
			preparedStatement.setString(3, client.getPhone());
			preparedStatement.setString(4, client.getEmail());
			return preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return 0;
	}

	@Override
	public List<Client> listClient() {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		List<Client> listClient = new ArrayList<Client>();

		try {
			connection = MySqlConexion.getConexion();
			String query = "SELECT * FROM client";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Client client = new Client();
				client.setId(resultSet.getInt("id"));
				client.setFirstName(resultSet.getString("firstName"));
				client.setLastName(resultSet.getString("lastName"));
				client.setPhone(resultSet.getString("phone"));
				client.setEmail(resultSet.getString("email"));
				listClient.add(client);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return listClient;
	}

	@Override
	public Client getClient(String id) {
		// TODO Auto-generated method stub

		Client client = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = MySqlConexion.getConexion();
			String query = "SELECT * FROM client WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				client = new Client();
				client.setId(resultSet.getInt("id"));
				client.setFirstName(resultSet.getString("firstName"));
				client.setLastName(resultSet.getString("lastName"));
				client.setPhone(resultSet.getString("phone"));
				client.setEmail(resultSet.getString("email"));
				return client;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	@Override
	public int updateClient(Client client) {
		// TODO Auto-generated method stub

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = MySqlConexion.getConexion();
			String query = "UPDATE client SET firstName = ?, lastName = ?, phone = ?, email = ? WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, client.getFirstName());
			preparedStatement.setString(2, client.getLastName());
			preparedStatement.setString(3, client.getPhone());
			preparedStatement.setString(4, client.getEmail());
			preparedStatement.setInt(5, client.getId());
			return preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public int deleteClient(String id) {
		// TODO Auto-generated method stub

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = MySqlConexion.getConexion();
			String query = "DELETE FROM client WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			return preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

}
