package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entidades.Product;
import interfaces.ProductInterface;
import util.MySqlConexion;

// create table product(
// 	id int auto_increment,
//     name varchar(150) NOT NULL,
//     price float NOT NULL,
//     image varchar(300),
//     description varchar(100),
//     primary key (id)
// );

public class ProductModel implements ProductInterface {

  @Override
  public int createProduct(Product product) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "INSERT INTO product VALUES (null, ?, ?, ?, ?)";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, product.getName());
      preparedStatement.setFloat(2, product.getPrice());
      preparedStatement.setString(3, product.getImage());
      preparedStatement.setString(4, product.getDescription());
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
  public List<Product> listProduct() {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    List<Product> listProduct = new ArrayList<Product>();

    try {
      connection = MySqlConexion.getConexion();
      String query = "SELECT * FROM product";
      preparedStatement = connection.prepareStatement(query);
      resultSet = preparedStatement.executeQuery();
      while (resultSet.next()) {
        Product product = new Product();
        product.setId(resultSet.getInt("id"));
        product.setName(resultSet.getString("name"));
        product.setPrice(resultSet.getFloat("price"));
        product.setImage(resultSet.getString("image"));
        product.setDescription(resultSet.getString("description"));
        listProduct.add(product);
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

    return listProduct;
  }

  @Override
  public Product getProduct(String id) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "SELECT * FROM product WHERE id = ?";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, id);
      resultSet = preparedStatement.executeQuery();
      if (resultSet.next()) {
        Product product = new Product();
        product.setId(resultSet.getInt("id"));
        product.setName(resultSet.getString("name"));
        product.setPrice(resultSet.getFloat("price"));
        product.setImage(resultSet.getString("image"));
        product.setDescription(resultSet.getString("description"));
        return product;
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
  public int updateProduct(Product product) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "UPDATE product SET name = ?, price = ?, image = ?, description = ? WHERE id = ?";
      preparedStatement = connection.prepareStatement(query);
      preparedStatement.setString(1, product.getName());
      preparedStatement.setFloat(2, product.getPrice());
      preparedStatement.setString(3, product.getImage());
      preparedStatement.setString(4, product.getDescription());
      preparedStatement.setInt(5, product.getId());
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
  public int deleteProduct(String id) {
    // TODO Auto-generated method stub
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
      connection = MySqlConexion.getConexion();
      String query = "DELETE FROM product WHERE id = ?";
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
