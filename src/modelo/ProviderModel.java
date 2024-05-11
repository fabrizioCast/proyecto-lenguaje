package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidades.Provider;
import interfaces.ProviderInterface;
import util.MySqlConexion;

public class ProviderModel implements ProviderInterface {

  @Override
  public int createProvider(Provider provider) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "INSERT INTO provider VALUES (null, ?, ?, ?)";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, provider.getName());
      preparedStatement.setString(2, provider.getEmail());
      preparedStatement.setString(3, provider.getRuc());
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
  public List<Provider> listProvider() {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    List<Provider> listProvider = new ArrayList<Provider>();

    try {
      connection = MySqlConexion.getConexion();
      String query = "SELECT * FROM provider";
      preparedStatement = connection.prepareStatement(query);
      resultSet = preparedStatement.executeQuery();
      while (resultSet.next()) {
        Provider provider = new Provider();
        provider.setId(resultSet.getInt("id"));
        provider.setName(resultSet.getString("name"));
        provider.setEmail(resultSet.getString("email"));
        provider.setRuc(resultSet.getString("ruc"));
        listProvider.add(provider);
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

    return listProvider;
  }

  @Override
  public Provider getProvider(String id) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "SELECT * FROM provider WHERE id = ?";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, id);
      resultSet = preparedStatement.executeQuery();
      if (resultSet.next()) {
    	  Provider provider = new Provider();
    	  provider.setId(resultSet.getInt("id"));
          provider.setName(resultSet.getString("name"));
          provider.setEmail(resultSet.getString("email"));
          provider.setRuc(resultSet.getString("ruc"));
        return provider;
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
  public int updateProvider(Provider provider) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "UPDATE provider SET name = ?, email = ?, ruc = ? WHERE id = ?";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, provider.getName());
      preparedStatement.setString(2, provider.getEmail());
      preparedStatement.setString(3, provider.getRuc());
      preparedStatement.setInt(4, provider.getId());
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
  public int deleteProvider(String id) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "DELETE FROM provider WHERE id = ?";
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
