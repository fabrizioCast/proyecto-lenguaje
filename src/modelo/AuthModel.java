package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entidades.Client;
import entidades.User;
import interfaces.AuthInterface;
import util.MySqlConexion;

public class AuthModel implements AuthInterface {

  @Override
  public User verify(String email, String password) {
    User user = null;
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    try {
      connection = MySqlConexion.getConexion();
      String query = "SELECT * FROM user WHERE email = ? AND password = ?";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, email);
      preparedStatement.setString(2, password);
      resultSet = preparedStatement.executeQuery();
      if (resultSet.next()) {
        user = new User();
        user.setId(resultSet.getInt("id"));
        user.setFirstName(resultSet.getString("firstName"));
        user.setLastName(resultSet.getString("lastName"));
        user.setPhone(resultSet.getString("phone"));
        user.setEmail(resultSet.getString("email"));
        user.setPassword(resultSet.getString("password"));
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
    return user;
  }
  
  @Override
	public int createUser(User user) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = MySqlConexion.getConexion();
			String query = "INSERT INTO user VALUES (null, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getPhone());
			preparedStatement.setString(4, user.getEmail());
			preparedStatement.setString(5, user.getPassword());
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
